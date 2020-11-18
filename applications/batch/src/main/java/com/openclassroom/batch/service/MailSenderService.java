package com.openclassroom.batch.service;

import javax.mail.MessagingException;

public interface MailSenderService {
	
	void send(String destination, String content) throws MessagingException;

}
