package com.openclassroom.webapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.openclassroom.restClient.BookServiceRestClient;

//concerne la page "Consulter mes prêts en cours"
@Controller
@RequestMapping("/loan")
public class LoanListController {
	
	private BookServiceRestClient bookService;
	
	@Autowired
	public void setBookService(BookServiceRestClient bookService) {
		this.bookService = bookService;
	}
	
	// afficher la liste de tous les emprunts de l'utilisateur courant
	@GetMapping("/list")
	public String getUserLoans(Model model) { 
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		model.addAttribute("loans", bookService.getUserLoans(username));

		return "user-loans";
		
	}

	// prolonger un emprunt
	@GetMapping("/extend")
	public String extendLoan(@RequestParam("loanId") int loanId, Model model) {
		
		bookService.extendLoan(loanId);
		
		return getUserLoans(model);
	}
	
	
}
