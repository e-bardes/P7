package com.openclassroom.business;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openclassroom.dao.entity.UserEntity;
import com.openclassroom.dao.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	private UserRepository userRepository;
	
	@Autowired
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	public UserServiceImpl() {
		
	}
	
	// on passe en paramètre la la date et l'heure actuelle car on a besoin de la comparer avec celles
	// dédiées aux livres empruntés
	@Override
	public List<UserEntity> getUsers() {
		return userRepository.findUsersByOverdueBooks(LocalDateTime.now());
	}

	@Override
	public UserEntity getUser(String username) {
		
		Optional<UserEntity> result = userRepository.findByUsername(username);
		
		UserEntity user = null;
		
		if (result.isPresent()) {
			user = result.get();
		}
		else {
			throw new RuntimeException("Did not find user id - " + username);
		}
		
		return user;
	}

	@Override
	public void addOrEditUser(UserEntity user) {
		userRepository.save(user);
		
	}
}
