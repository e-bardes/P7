package com.openclassroom.restClient;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.openclassroom.model.Book;
import com.openclassroom.model.Loan;


@Service
@PropertySource("classpath:application.properties")
public class BookServiceRestClientImpl implements BookServiceRestClient {
	
	private RestTemplate restTemplate;
	
	private String restUrl;
	
	@Autowired
	public BookServiceRestClientImpl(@Value("${restUrl.book}") String restUrl) {
	
		
		this.restTemplate = new RestTemplate();
		this.restUrl = restUrl;
	}

	// récupérer tous les livres répertoriés
	@Override
	public List<Book> getBooks() {
		
		ResponseEntity<List<Book>> responseEntity = restTemplate.exchange(restUrl, 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Book>>() {});
		
		List<Book> books = responseEntity.getBody();
		
		return books;
	}

	// créer un emprunt pour un livre
	@Override
	public void createBookLoan(int bookId, String username) {
		
		restTemplate.put("http://localhost:8080/rest/api/v2/books/loans2?bookId=" + bookId + "&username=" + username, null);
		
	}
	
	// obtenir tous les emprunts d'un utilisateur
	@Override
	public List<Loan> getUserLoans(String username) {
		
		
		ResponseEntity<List<Loan>> responseEntity = restTemplate.exchange(restUrl + "/loans?username=" + username, 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Loan>>() {});
		
		List<Loan> loanList = responseEntity.getBody();
		
		return loanList;
		
	}
	
	// prolonger l'emprunt d'un livre
	@Override
	public void extendLoan(int loanId) {
		
		restTemplate.put(restUrl + "/loans?loanId=" + loanId, null);
	}
	
	// chercher des livres en fonction de ce qui a été saisie dans la barre de recherche
	@Override
	public List<Book> searchBooks(String result) {
		ResponseEntity<List<Book>> responseEntity = restTemplate.exchange(restUrl + "/books?result=" + result, 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Book>>() {});
		
		List<Book> books = responseEntity.getBody();
		
		return books;
	}

}
