package com.openclassroom.dao.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.openclassroom.dao.entity.LoanEntity;

@Repository
public interface LoanRepository extends JpaRepository<LoanEntity, Integer> {
	
	// On chercher tous les emprunts d'un utilisateur grâce à son username
	@Query("SELECT l FROM LoanEntity l WHERE l.user.username = ?1")
	List<LoanEntity> findByUserUsername(String username);
}
