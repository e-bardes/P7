package com.openclassroom.batch.config;

import java.io.IOException;

import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.item.ItemReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;

import com.openclassroom.batch.service.EmailItemWriter;
import com.openclassroom.batch.service.MailContentGenerator;
import com.openclassroom.batch.service.MailContentGeneratorImpl;
import com.openclassroom.batch.service.MailSenderService;
import com.openclassroom.batch.service.MailSenderServiceImpl;
import com.openclassroom.batch.service.UserItemReader;
import com.openclassroom.model.User;
import com.openclassroom.restClient.UserServiceRestClient;
import com.openclassroom.restClient.UserServiceRestClientImpl;

import freemarker.core.ParseException;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.TemplateNotFoundException;

@Configuration
@PropertySource("classpath:application.properties")
public class UserEmailStepConfig {
	
	@Autowired
	private StepBuilderFactory stepBuilderFactory;

	@Bean
	public UserItemReader userItemReader() {
		return new UserItemReader();
	}
	
	@Bean
	public MailContentGenerator mailContentGenerator(final freemarker.template.Configuration conf)
			throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException {
		return new MailContentGeneratorImpl(conf);
	}

	@Bean
	public MailSenderService mailSenderService(final JavaMailSender javaMailSender) {
		return new MailSenderServiceImpl(javaMailSender);
	}
	
	@Bean
	public EmailItemWriter emailItemWriter(final MailSenderService mailSenderService,
			final MailContentGenerator mailContentGenerator) {
		return new EmailItemWriter(mailSenderService, mailContentGenerator);
	}
	
	@Bean
	public UserServiceRestClient userServiceRestClient(@Value("${rest.url}") String restUrl) {
		return new UserServiceRestClientImpl(restUrl);
	}
	
	// l'unique step du programme qui requiert un reader et un writer
	@Bean
	public Step userLoadingStep() {
		
		return stepBuilderFactory.get("userLoadingStep")
		 .<User, User>chunk(10)
		 .reader((ItemReader<? extends User>) userItemReader())
		 .writer(emailItemWriter(null, null))
		 .build();
	}

}
