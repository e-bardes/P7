package com.openclassroom.model;

import java.time.LocalDateTime;

public class Book {

	private int id;
	private String name;
	private LocalDateTime endOfLoaningDate;
	private boolean loanExtended;
	private String summary;
	
	public Book() {
		
	}

	public Book(String name, String summary) {
		this.name = name;
		this.summary = summary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}
}
