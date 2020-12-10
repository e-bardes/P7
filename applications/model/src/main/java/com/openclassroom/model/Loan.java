package com.openclassroom.model;

import java.time.LocalDateTime;

public class Loan {
	
	private int id;
	private User user;
	private Book book;
	private LocalDateTime endOfLoaningDate;
	private boolean loanExtended;
	
	public Loan() {
	    	
	}
	    
    public Loan(User user, Book book,
    		LocalDateTime endOfLoaningDate, boolean loanExtended) {
    	this.user = user;
    	this.book = book;
    	this.endOfLoaningDate = endOfLoaningDate;
    	this.loanExtended = loanExtended;
    }
    
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public LocalDateTime getEndOfLoaningDate() {
		return endOfLoaningDate;
	}

	public void setEndOfLoaningDate(LocalDateTime endOfLoaningDate) {
		this.endOfLoaningDate = endOfLoaningDate;
	}

	public boolean isLoanExtended() {
		return loanExtended;
	}

	public void setLoanExtended(boolean loanExtended) {
		this.loanExtended = loanExtended;
	}
}
