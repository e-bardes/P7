package com.openclassroom.model;

public class Book {

	private int id;
	private String name;
	private String author;
	private int nbCopiesAvailable;
	private String summary;
	
	public Book() {
		
	}

	public Book(String name, String author, String summary, int nbCopiesAvailable) {
		this.name = name;
		this.summary = summary;
		this.nbCopiesAvailable = nbCopiesAvailable;
		this.author = author;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getNbCopiesAvailable() {
		return nbCopiesAvailable;
	}

	public void setNbCopiesAvailable(int nbCopiesAvailable) {
		this.nbCopiesAvailable = nbCopiesAvailable;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}
}
