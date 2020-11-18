package com.openclassroom.business;

import java.util.List;

import com.openclassroom.dao.entity.BookEntity;

public interface BookV1Service {

	List<BookEntity> getBooks();
	
	BookEntity getBook(int id);
	
	void addOrEditBook(BookEntity book);

	Long countBooks();
}
