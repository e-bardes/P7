package com.openclassroom.restClient;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.openclassroom.model.User;

@Service
@PropertySource("classpath:application.properties")
public class UserServiceRestClientImpl implements UserServiceRestClient  {

	private RestTemplate restTemplate;
	
	private String restUrl;
	
	@Autowired
	public UserServiceRestClientImpl(@Value("${restUrl.user}") String restUrl) {
	
		this.restTemplate = new RestTemplate();
		this.restUrl = restUrl;
	}
	
	
	// obtenir tous les utilisateurs nécessaires au fonctionnement du batch
	@Override
	public List<User> getUsers() {
		
		ResponseEntity<List<User>> responseEntity = restTemplate.exchange(restUrl, 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<User>>() {});
		
		List<User> users = responseEntity.getBody();
		
		return users;
	}
	
	// récupérer les informations nécessaires à la vérification de l'authentification d'un utilisateur
	@Override
	public User authentication(String username, String password) {
		
		User user= restTemplate.getForObject(restUrl + "/" + username, User.class);
		
		if (user.getUsername() != null) {
			if (user.getPassword().equals(password)) {
				return user;
			}
		}

		return null;
	}
}
