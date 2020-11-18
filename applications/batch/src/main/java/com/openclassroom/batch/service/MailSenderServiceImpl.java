package com.openclassroom.batch.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

// classe qui gère l'envoi de mail
public class MailSenderServiceImpl implements MailSenderService {

	private final JavaMailSender javaMailSender;

	public MailSenderServiceImpl(final JavaMailSender javaMailSender) {
		super();
		this.javaMailSender = javaMailSender;
	}

	@Override
	public void send(final String destination, final String content) throws MessagingException {

		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		message.setContent(content, "text/html");
		helper.setTo(destination);
		helper.setSubject("Message de relance");

		javaMailSender.send(message);
	}

}
