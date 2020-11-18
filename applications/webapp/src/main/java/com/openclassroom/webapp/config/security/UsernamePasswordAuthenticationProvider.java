package com.openclassroom.webapp.config.security;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import com.openclassroom.model.User;
import com.openclassroom.restClient.UserServiceRestClient;

@Component
public class UsernamePasswordAuthenticationProvider implements AuthenticationProvider {
	
	private UserServiceRestClient userServiceRestClient;
	
	@Autowired
    public UsernamePasswordAuthenticationProvider(UserServiceRestClient userServiceRestClient) {
        this.userServiceRestClient = userServiceRestClient;
        
    }

	// créer soit même un provider va permettre de pouvoir comparer le mot de passe en plus du nom d'utilisateur
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		String username = authentication.getName();
		String password = authentication.getCredentials().toString();
		
		User user = userServiceRestClient.authentication(username, password);
		
		if (user == null) {
			throw new BadCredentialsException("Authentication failed for " + username);
		}
		
		Authentication auth = new UsernamePasswordAuthenticationToken(username, password, new ArrayList<>());
		
		return auth;
	}

	@Override	
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}
	
	

}
