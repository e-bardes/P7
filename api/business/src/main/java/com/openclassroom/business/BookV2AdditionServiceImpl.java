package com.openclassroom.business;

import java.time.LocalDateTime;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openclassroom.dao.entity.BookEntity;
import com.openclassroom.dao.entity.LoanEntity;
import com.openclassroom.dao.entity.UserEntity;
import com.openclassroom.dao.repository.LoanRepository;

// classe dédié à la V2 réservé pour le futur logiciel du personnel de la bibliothèque
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
	
	private LoanRepository loanRepository;
	
	@Autowired
	public void setLoanRepository(LoanRepository loanRepository) {
		this.loanRepository = loanRepository;
	}

	public BookV2AdditionServiceImpl() {
		
	}
	
	// créer un emprunt
	@Override
	@Transactional
	public void createBookLoan(int bookId, String username) {
		
		BookEntity book = bookService.getBook(bookId);
		UserEntity user = userService.getUser(username);
		
		book.setNbCopiesAvailable(book.getNbCopiesAvailable() - 1);
		LoanEntity loan = new LoanEntity(user, book, LocalDateTime.now().plusWeeks(4), false);
		
		loanRepository.save(loan);
	}
	
	// supprimer un emprunt
	@Override
	@Transactional
	public void deleteBookLoan(int loanId) {
		
		LoanEntity loan = bookService.getLoan(loanId);
		loan.getBook().setNbCopiesAvailable(loan.getBook().getNbCopiesAvailable() + 1);
		loanRepository.deleteById(loanId);
	}
	
	
}
