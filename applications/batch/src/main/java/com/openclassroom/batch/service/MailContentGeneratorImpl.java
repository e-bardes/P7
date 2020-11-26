package com.openclassroom.batch.service;

import java.io.IOException;
import java.io.StringWriter;

import com.openclassroom.model.User;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

// la classe qui génère le template de l'email (qui sera représenté par le fichier email.ftl)
public class MailContentGeneratorImpl implements MailContentGenerator {

	private Template template;

	public MailContentGeneratorImpl(final Configuration conf)
			throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException {
		super();
		template = conf.getTemplate("email.ftl");
	}

	@Override
	public String generate(final User user) throws TemplateException, IOException {
		StringWriter sw = new StringWriter();
		template.process(user, sw);
		return sw.toString();
	}

}
