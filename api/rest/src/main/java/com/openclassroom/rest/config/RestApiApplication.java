package com.openclassroom.rest.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@ComponentScan(basePackages = {"com.openclassroom.rest.restController", "com.openclassroom.business", "com.openclassroom.*"})
@EnableJpaRepositories(basePackages = {"${spring.jpa.properties.repository.packages}"})
@EntityScan(basePackages = {"${spring.jpa.properties.entity.packages}"})
public class RestApiApplication extends SpringBootServletInitializer {
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(RestApiApplication.class);
    }
	
	public static void main(String[] args) {
		
		SpringApplication.run(RestApiApplication.class, args);
	}
}
