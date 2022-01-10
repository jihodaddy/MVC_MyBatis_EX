package com.spring_mvc_mybatis.book.service;

import java.util.ArrayList;

import com.spring_mvc_mybatis.book.model.BookVO;

public interface IBookService {
	ArrayList<BookVO> listAllBook();
	void insertBook(BookVO bookVo);
	void updateBook(BookVO bookVo);
	void deleteBook(String bookVo);
	BookVO detailViewBook(String bookNo);
}
