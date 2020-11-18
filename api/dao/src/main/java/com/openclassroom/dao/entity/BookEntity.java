package com.openclassroom.dao.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class BookEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private LocalDateTime endOfLoaningDate;
	private boolean loanExtended;
	
	@Column(length = 1000)
	private String summary;
	
	public BookEntity() {
		
	}

	public BookEntity(String name, String summary, LocalDateTime endOfLoaningDate, boolean loanExtended) {
		this.endOfLoaningDate = endOfLoaningDate;
		this.loanExtended = loanExtended;
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
