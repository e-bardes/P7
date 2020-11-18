package com.openclassroom.batch.service;

import java.util.List;

import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.NonTransientResourceException;
import org.springframework.batch.item.ParseException;
import org.springframework.batch.item.UnexpectedInputException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import com.openclassroom.model.User;
import com.openclassroom.restClient.UserServiceRestClient;

// lit tous les utilisateurs récupérés depuis le module restClient
// les utilisateurs concernés sont ceux qui ont des livres non rendus à temps
@Service
@PropertySource("classpath:application.properties")
public class UserItemReader implements ItemReader<User> {

	@Autowired
	private UserServiceRestClient userServiceRestClient;
	
	private int nextUserIndex;
	private List<User> userList;
	
	public UserItemReader() {
		
	}
	
	@Override
	public User read() throws Exception, UnexpectedInputException, ParseException, NonTransientResourceException {
		
		userList = userServiceRestClient.getUsers();
		
		User nextUser = null;
		
		if (nextUserIndex < userList.size()) {
			nextUser = userList.get(nextUserIndex);
			nextUserIndex++;
		} else {
			nextUserIndex = 0;
		}
		
		return nextUser;
	}
	
}
