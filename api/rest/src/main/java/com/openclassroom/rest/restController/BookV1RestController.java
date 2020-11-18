package com.openclassroom.rest.restController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.openclassroom.business.BookV1Service;
import com.openclassroom.business.UserService;
import com.openclassroom.dao.entity.BookEntity;


@RestController
@RequestMapping("/api/v1/books")
public class BookV1RestController {
	
	private BookV1Service bookService;
	
	@Autowired
	public void setBookService(BookV1Service bookService) {
		this.bookService = bookService;
	}
	
	private UserService userService;
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public BookV1RestController() {
		
	}
	
	@GetMapping("")
	public List<BookEntity> getBooks() {
		
		return bookService.getBooks();
	}
	
	@GetMapping("/count")
	public Long countBooks() {
		
		return bookService.countBooks();
	}
	
	@GetMapping("/loans")
	public List<BookEntity> getUserLoans(@RequestParam("username") String username) {
		
		return userService.getUser(username).getBookList();
		
	}
	
	@PutMapping("/loans")
	public BookEntity extendLoan(@RequestParam("loanId") int loanId) {
		
		BookEntity book = bookService.getBook(loanId);

		book.setEndOfLoaningDate(book.getEndOfLoaningDate().plusWeeks(4));
		
		book.setLoanExtended(true);
			
		bookService.addOrEditBook(book);
		return book;
	}
	
}
