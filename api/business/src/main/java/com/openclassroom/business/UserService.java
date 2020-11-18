package com.openclassroom.business;

import java.util.List;

import com.openclassroom.dao.entity.UserEntity;

public interface UserService {

	List<UserEntity> getUsers();
	
	void addOrEditUser(UserEntity user);

	UserEntity getUser(String username);

}
