package com.openclassroom.business;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openclassroom.dao.entity.BookEntity;
import com.openclassroom.dao.repository.BookRepository;

@Service
public class BookV1ServiceImpl implements BookV1Service {
	
	private BookRepository bookRepository;
	
	@Autowired
	public void setBookRepository(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	
	public BookV1ServiceImpl() {
		
	}

	@Override
	public List<BookEntity> getBooks() {
		return bookRepository.findByOrderByIdAsc();
	}
	
	@Override
	public Long countBooks() {
		return bookRepository.count();
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
}
