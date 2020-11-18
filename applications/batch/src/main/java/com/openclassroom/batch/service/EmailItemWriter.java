package com.openclassroom.batch.service;

import java.util.List;

import org.springframework.batch.item.ItemWriter;

import com.openclassroom.model.User;

// le writer va permettre de créer et envoyer le mail aux utilisateurs concernés
public class EmailItemWriter implements ItemWriter<User> {

	private final MailSenderService mailSenderService;

	private final MailContentGenerator mailContentGenerator;

	public EmailItemWriter(final MailSenderService mailSenderService,
			final MailContentGenerator mailContentGenerator) {
		super();
		this.mailSenderService = mailSenderService;
		this.mailContentGenerator = mailContentGenerator;
	}

	@Override
	public void write(final List<? extends User> users) throws Exception {

		for (User user : users) {
			String content = mailContentGenerator.generate(user);
			mailSenderService.send(user.getEmail(), content);
		}

	}
}
