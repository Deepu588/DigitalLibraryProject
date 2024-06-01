package edu.per.librarymanagement.Entity;

import java.sql.Date;

public class FreeBook {

	
	private int bookId;
	private String bookName;
	private String authorName;
	private Date pDate;
	private String bookType;
	private String bookLink;
	
	public FreeBook() {
		super();
		// TODO Auto-generated constructor stub
	}


	public FreeBook(int bookId, String bookName, String authorName, Date pDate, String bookType,String bookLink) {
		//super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.authorName = authorName;
		this.pDate = pDate;
		this.bookType = bookType;
		this.bookLink=bookLink;
	}

	public String getBookName() {
		return bookName;
	}


	public void setBookName(String bookName) {
		this.bookName = bookName;
	}


	public String getAuthorName() {
		return authorName;
	}


	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}


	public Date getpDate() {
		return pDate;
	}


	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}


	public String getBookType() {
		return bookType;
	}


	public void setBookType(String bookType) {
		this.bookType = bookType;
	}

	public int getBookId() {
		return bookId;
	}


	public void setBookId(int bookId) {
		this.bookId = bookId;
	}



	public String getBookLink() {
		return bookLink;
	}


	public void setBookLink(String bookLink) {
		this.bookLink = bookLink;
	}


	@Override
	public String toString() {
		return "FreeBook [bookId=" + bookId + ", bookName=" + bookName + ", authorName=" + authorName + ", pDate="
				+ pDate + ", bookType=" + bookType + ", bookLink=" + bookLink + "]";
	}
	
	
	
	
	

}
