package com.openclassroom.dao.entity;

import java.time.LocalDateTime;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table
public class LoanEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "user_id")
	@JsonBackReference
    private UserEntity user;

    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "book_id")
    private BookEntity book;
    
    private LocalDateTime endOfLoaningDate;
    private boolean loanExtended;
    
    public LoanEntity() {
    	
    }
    
    public LoanEntity(UserEntity user, BookEntity book,
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

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public BookEntity getBook() {
		return book;
	}

	public void setBook(BookEntity book) {
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
