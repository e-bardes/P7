package com.openclassroom.batch.config;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.rest.RepositoryRestMvcAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration( exclude = { DataSourceAutoConfiguration.class, HibernateJpaAutoConfiguration.class, RepositoryRestMvcAutoConfiguration.class })
@EnableBatchProcessing
@ComponentScan(basePackages = {"com.openclassroom.batch.config", "com.openclassroom.batch.service"}) 
public class BatchApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(BatchApplication.class, args);
	}
	
	// le job est à l'origine du batch, il va permettre d'éxécuter l'unique step du programme
	@Bean
	public Job job(final JobBuilderFactory jobBuilderFactory, final Step userLoadingStep) {
		return jobBuilderFactory.get("batch")
				.start(userLoadingStep)
				.build();
	}
}
