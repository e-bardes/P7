package com.openclassroom.webapp.config.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	private UsernamePasswordAuthenticationProvider usernamePasswordAuthenticationProvider;
	
	@Autowired
	public void setUsernamePasswordAuthenticationProvider(UsernamePasswordAuthenticationProvider usernamePasswordAuthenticationProvider) {
		this.usernamePasswordAuthenticationProvider = usernamePasswordAuthenticationProvider;
	}

	// login form authentication
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .anyRequest()
                .authenticated()
                .and()
                .formLogin()
        		  .loginPage("/login")
        		  .loginProcessingUrl("/login")
                  .defaultSuccessUrl("/", true)
                  .permitAll()
                .and()
                .rememberMe()
                .and()
                .logout()
                    .logoutUrl("/logout")
                    .logoutRequestMatcher(new AntPathRequestMatcher("/logout", "GET")) // utile si csrf est désactivé
                    .clearAuthentication(true)
                    .invalidateHttpSession(true)
                    .deleteCookies("JSESSIONID", "remember-me")
                    .logoutSuccessUrl("/loginPage")
                .and()
        		.csrf().disable();
    }
    
    // création d'un provider personnalisé
    @Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
    	auth.authenticationProvider(usernamePasswordAuthenticationProvider);
	}

}