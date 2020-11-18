package com.openclassroom.batch.service;

import java.io.IOException;

import com.openclassroom.model.User;

import freemarker.template.TemplateException;

public interface MailContentGenerator {
	
	String generate(User user) throws TemplateException, IOException;

}
