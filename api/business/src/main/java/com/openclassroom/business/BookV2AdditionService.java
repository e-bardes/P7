package com.openclassroom.business;

import com.openclassroom.dao.entity.BookEntity;

public interface BookV2AdditionService {

	BookEntity createBookLoan(int bookId, String username);

	BookEntity deleteBookLoan(int bookId, String username);

}
