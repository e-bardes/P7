package com.openclassroom.business;

import java.util.List;

import com.openclassroom.dao.entity.BookEntity;
import com.openclassroom.dao.entity.LoanEntity;

public interface BookV1Service {

	List<BookEntity> getBooks();
	
	BookEntity getBook(int id);
	
	void addOrEditBook(BookEntity book);
	
	List<LoanEntity> getUserLoans(String username);

	LoanEntity getLoan(int loanId);

	void addOrEditLoan(LoanEntity loan);

	List<BookEntity> searchBooks(String result);
}
