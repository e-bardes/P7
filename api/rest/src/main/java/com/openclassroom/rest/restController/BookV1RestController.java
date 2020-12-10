package com.openclassroom.rest.restController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.openclassroom.business.BookV1Service;
import com.openclassroom.dao.entity.BookEntity;
import com.openclassroom.dao.entity.LoanEntity;


@RestController
@RequestMapping("/api/v1/books")
public class BookV1RestController {
	
	private BookV1Service bookService;
	
	@Autowired
	public void setBookService(BookV1Service bookService) {
		this.bookService = bookService;
	}
	
	public BookV1RestController() {
		
	}
	
	@GetMapping("")
	public List<BookEntity> getBooks() {
		
		return bookService.getBooks();
	}
	
	// récupérer tous les emprunts de l'utilisateur courant en fonction de son nom d'utilisateur
	@GetMapping("/loans")
	public List<LoanEntity> getUserLoans(@RequestParam("username") String username) {
		
		return bookService.getUserLoans(username);
		
	}
	
	// prolonger un emprunt de 4 semaines
	@PutMapping("/loans")
	public void extendLoan(@RequestParam("loanId") int loanId) {
		
		LoanEntity loan = bookService.getLoan(loanId);
		loan.setEndOfLoaningDate(loan.getEndOfLoaningDate().plusWeeks(4));
		loan.setLoanExtended(true);
		bookService.addOrEditLoan(loan);
	}
	
	// chercher des livres à partir de la string saisie dans la barre de recherche
	@GetMapping("/books")
	public List<BookEntity> searchBooks(@RequestParam("result") String result) {
		return bookService.searchBooks(result);
		
	}
	
}
