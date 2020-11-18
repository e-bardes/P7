package com.openclassroom.business;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openclassroom.dao.entity.BookEntity;
import com.openclassroom.dao.entity.UserEntity;

@Service
public class BookV2AdditionServiceImpl implements BookV2AdditionService {
	
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

	public BookV2AdditionServiceImpl() {
		
	}
	
	@Override
	public BookEntity createBookLoan(int bookId, String username) {
		
		BookEntity book = bookService.getBook(bookId);
		UserEntity user = userService.getUser(username);
		
		book.setEndOfLoaningDate(LocalDateTime.now().plusWeeks(4));
		
		bookService.addOrEditBook(book);
		
		List<BookEntity> books = new ArrayList<>();
		books.addAll(user.getBookList());
		books.add(book);
		user.setBookList(books);
		
		userService.addOrEditUser(user);
		
		return book;
	}
	
	@Override
	public BookEntity deleteBookLoan(int bookId, String username) {
		
		BookEntity book = bookService.getBook(bookId);
		UserEntity user = userService.getUser(username);
		
		book.setEndOfLoaningDate(null);
		book.setLoanExtended(false);
		
		bookService.addOrEditBook(book);
		
		for (BookEntity b : user.getBookList()) {
			if (b.getId() == book.getId()) {
				user.getBookList().remove(bookId);
			}
		}
		
		return book;
	}
}
