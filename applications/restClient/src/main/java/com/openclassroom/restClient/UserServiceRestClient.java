package com.openclassroom.restClient;

import java.util.List;

import com.openclassroom.model.User;

public interface UserServiceRestClient {
	
	List<User> getUsers();

	User authentication(String username, String password);
}
