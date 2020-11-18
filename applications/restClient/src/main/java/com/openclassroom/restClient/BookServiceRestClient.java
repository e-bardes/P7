package com.openclassroom.restClient;


import java.util.List;

import com.openclassroom.model.Book;

public interface BookServiceRestClient {

	List<Book> getBooks();

	Long countBooks();

	void createBookLoan(int bookId, String username);
	
	List<Book> getUserLoans(String username);

	void extendLoan(int loanId);

}
