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
	
	// compter le nombre de livres répertoriés
	@Override
	public Long countBooks() {
		Long nbBooks = restTemplate.getForObject(restUrl + "/count" , Long.class);
		
		return nbBooks;
	}
	
	// obtenir tous les emprunts d'un utilisateur
	@Override
	public List<Book> getUserLoans(String username) {
		
		
		ResponseEntity<List<Book>> responseEntity = restTemplate.exchange(restUrl + "/loans?username=" + username, 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Book>>() {});
		
		List<Book> bookList = responseEntity.getBody();
		
		return bookList;
		
	}
	
	// prolonger l'emprunt d'un livre
	@Override
	public void extendLoan(int loanId) {
		
		restTemplate.put(restUrl + "/loans?loanId=" + loanId, null);
	}

}
