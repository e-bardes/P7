package com.openclassroom.business;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openclassroom.dao.entity.BookEntity;
import com.openclassroom.dao.entity.LoanEntity;
import com.openclassroom.dao.repository.BookRepository;
import com.openclassroom.dao.repository.LoanRepository;

@Service
public class BookV1ServiceImpl implements BookV1Service {
	
	private BookRepository bookRepository;
	
	@Autowired
	public void setBookRepository(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	
	private LoanRepository loanRepository;
	
	@Autowired
	public void setLoanRepository(LoanRepository loanRepository) {
		this.loanRepository = loanRepository;
	}
	
	public BookV1ServiceImpl() {
		
	}

	@Override
	public List<BookEntity> getBooks() {
		return bookRepository.findByOrderByIdAsc();
	}
	
	@Override
	public BookEntity getBook(int id) {
		Optional<BookEntity> result = bookRepository.findById(id);
		
		BookEntity book = null;
		
		if (result.isPresent()) {
			book = result.get();
		}
		else {
			throw new RuntimeException("Did not find book id - " + id);
		}
		
		return book;
	}

	@Override
	public void addOrEditBook(BookEntity book) {	
		bookRepository.save(book);
		
	}
	
	// retrouver tous les emprunts de l'utilisateur courant en fonction de son username
	@Override
	public List<LoanEntity> getUserLoans(String username) {
		return loanRepository.findByUserUsername(username);
	}
	
	@Override
	public LoanEntity getLoan(int loanId) {
		Optional<LoanEntity> result = loanRepository.findById(loanId);
		
		LoanEntity loan = null;
		
		if (result.isPresent()) {
			loan = result.get();
		}
		else {
			throw new RuntimeException("Did not find loan id - " + loanId);
		}
		
		return loan;
	}
	
	@Override
	public void addOrEditLoan(LoanEntity loan) {	
		loanRepository.save(loan);
		
	}
	
	// on regarde si la chaîne saisie est contenue dans le nom ou le résumé du livre
	@Override
	public List<BookEntity> searchBooks(String result){
		
		List<BookEntity> allBooks = bookRepository.findByOrderByIdAsc();
		List<BookEntity> selectedBooks = new ArrayList<>();
		
		for (BookEntity b : allBooks) {
			if (b.getName().toLowerCase().contains(result.toLowerCase()) 
					|| b.getSummary().toLowerCase().contains(result.toLowerCase())) {
				selectedBooks.add(b);
			}
		}
		
		return selectedBooks;
	}
}
