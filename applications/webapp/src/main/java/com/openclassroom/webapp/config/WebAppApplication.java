package com.openclassroom.webapp.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class} )
@ComponentScan(basePackages = {"com.openclassroom.webapp.controller", "com.openclassroom.restClient", "com.openclassroom.webapp.config.security"})
public class WebAppApplication extends SpringBootServletInitializer {
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(WebAppApplication.class);
    }

	public static void main(String[] args) {
		
		SpringApplication.run(WebAppApplication.class, args);
	}
}
 