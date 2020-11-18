package com.openclassroom.rest.restController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.openclassroom.business.BookV2AdditionService;
import com.openclassroom.dao.entity.BookEntity;

@RestController
@RequestMapping("/api/v2/books")
public class BookV2AdditionRestController {

	private BookV2AdditionService bookV2AdditionService;
	
	@Autowired
	public void setBookV2AdditionService(BookV2AdditionService bookV2AdditionService) {
		this.bookV2AdditionService = bookV2AdditionService;
	}
	
	@PutMapping("/loans2")
	public BookEntity createBookLoan(@RequestParam("bookId") int bookId, 
									 @RequestParam("username") String username) {
		
		return bookV2AdditionService.createBookLoan(bookId, username);
	}
	
	@PutMapping("/loans1")
	public BookEntity deleteBookLoan(@RequestParam("bookId") int bookId, 
			 						 @RequestParam("username") String username) {
		
		return bookV2AdditionService.deleteBookLoan(bookId, username);
	}
}
