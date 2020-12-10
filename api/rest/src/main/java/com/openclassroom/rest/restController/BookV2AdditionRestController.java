package com.openclassroom.rest.restController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.openclassroom.business.BookV2AdditionService;

@RestController
@RequestMapping("/api/v2/books")
public class BookV2AdditionRestController {

	private BookV2AdditionService bookV2AdditionService;
	
	@Autowired
	public void setBookV2AdditionService(BookV2AdditionService bookV2AdditionService) {
		this.bookV2AdditionService = bookV2AdditionService;
	}
	
	// créer un emprunt
	@PutMapping("/loans2")
	public void createBookLoan(@RequestParam("bookId") int bookId, 
									 @RequestParam("username") String username) {
		
		bookV2AdditionService.createBookLoan(bookId, username);
	}
	
	// supprimer un emprunt
	@PutMapping("/loans1")
	public void deleteBookLoan(@RequestParam("bookId") int loanId) {
		
		bookV2AdditionService.deleteBookLoan(loanId);
	}
}
