package com.openclassroom.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.openclassroom.model.Book;
import com.openclassroom.restClient.BookServiceRestClient;

// concerne la page "Consulter les ouvrages"
@Controller
@RequestMapping("/book")
public class BookListController {

	private BookServiceRestClient bookService;
	
	@Autowired
	public void setBookService(BookServiceRestClient bookService) {
		this.bookService = bookService;
	}
	
	// afficher la liste de tous les livres
	@GetMapping("/list")
	public String listBooks(Model model) {
		
		List<Book> books = bookService.getBooks();
		Long nbBooks = bookService.countBooks();
		
		model.addAttribute("books", books);
		model.addAttribute("nbBooks", nbBooks);
		
		return "list-books";
	}
	
	// créer un emprunt sur un livre pour un utilisateur
	@GetMapping("/createLoan")
	public String createBookLoan(@RequestParam("bookId") int id, Model model) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		bookService.createBookLoan(id, username);
		
		return listBooks(model);
	}
	
}
