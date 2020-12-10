package com.openclassroom.restClient;


import java.util.List;

import com.openclassroom.model.Book;
import com.openclassroom.model.Loan;

public interface BookServiceRestClient {

	List<Book> getBooks();
	
	void createBookLoan(int bookId, String username);
	
	List<Loan> getUserLoans(String username);

	void extendLoan(int loanId);

	List<Book> searchBooks(String result);

}
