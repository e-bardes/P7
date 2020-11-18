package com.openclassroom.dao.repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.openclassroom.dao.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {

	Optional<UserEntity> findByUsername(String username);
	
	// On ne veut sélectionner que les utilisateurs ayant au moins 1 livres dont de délai est dépassé. On ne veut
	// également que sélectionner les livres concernés
	@Query("SELECT DISTINCT u FROM UserEntity u INNER JOIN FETCH u.bookList b WHERE b.endOfLoaningDate < ?1")
	List<UserEntity> findUsersByOverdueBooks (LocalDateTime currentDateTime);
	
}
