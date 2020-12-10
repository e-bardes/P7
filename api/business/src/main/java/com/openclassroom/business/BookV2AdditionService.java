package com.openclassroom.business;

public interface BookV2AdditionService {

	void createBookLoan(int bookId, String username);

	void deleteBookLoan(int loanId);

}
