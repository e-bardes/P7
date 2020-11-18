package com.openclassroom.rest.restController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.openclassroom.business.UserService;
import com.openclassroom.dao.entity.UserEntity;

@RestController
@RequestMapping("/api/v1/users")
public class UserRestController {
	
	private UserService userService;
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public UserRestController() {
		
	}
	
	@GetMapping("")
	public List<UserEntity> getUsers() {
		
		return userService.getUsers();
	}
	
	@GetMapping("/{username}")
	public UserEntity getUser(@PathVariable String username) {
		
		UserEntity user = userService.getUser(username);
		
		if (user == null) {
			throw new RuntimeException("User id not found - " + username);
		}
		
		return user;
	}
}
