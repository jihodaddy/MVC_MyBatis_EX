package com.spring_mvc_mybatis.book.controlloer;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_mvc_mybatis.book.model.BookVO;
import com.spring_mvc_mybatis.book.service.BookService;

@Controller
public class BookController {

	@Autowired
	BookService service;
	
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	//도서 정보 조회
	@RequestMapping("/bookview/listAllBook")
	public String listAllBook(Model model) {
		ArrayList<BookVO> bookList = service.listAllBook();
		model.addAttribute("bookList", bookList);
		return "bookview/bookListView";
	}
	//도서 등록 페이지 이동
	@RequestMapping("/bookview/newBookForm")	
	public String newBookForm() {
		return "bookview/newBookForm";
	}
	//도서 정보 등록
	@RequestMapping("/bookview/insertBook")
	public String insertBook(BookVO bookVo) {
		service.insertBook(bookVo);
		return "redirect:/bookview/listAllBook";
	}

	//상세정보 페이지 이동
	@RequestMapping("bookview/detailViewBook/{bookNo}")
	public String detailViewBook(@PathVariable String bookNo, Model model) {
		BookVO book = service.detailViewBook(bookNo);
		model.addAttribute("book", book);
		return "/bookview/bookDetailView";
	}
	//도서정보 수정페이지 이동
	@RequestMapping("/bookview/updateBookForm/{bookNo}")
	public String updateBookForm(@PathVariable String bookNo, Model model) {
		BookVO book = service.detailViewBook(bookNo);
		model.addAttribute("book", book);
		return "/bookview/updateBookForm";
	}
	//도서정보수정
	@RequestMapping("/bookview/updateBook")
	public String updateBook(BookVO bookVo) {
		service.updateBook(bookVo);
		return "redirect:./listAllBook";
	}
	//도서삭제
	@RequestMapping("/bookview/deleteBook/{bookNo}")
	public String deleteBook(@PathVariable String bookNo) {
		service.deleteBook(bookNo);
		return "redirect:/bookview/listAllBook";
	}
}






