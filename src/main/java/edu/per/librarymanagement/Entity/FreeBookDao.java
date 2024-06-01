package edu.per.librarymanagement.Entity;

import java.util.List;

public interface FreeBookDao {

	int addFreeBook(FreeBook freeBook);
	List<FreeBook> viewAllFreeBooks();
	
	FreeBook getBook(int bookid);
	int deleteFbook(int bookid);
	int updateBook(FreeBook freeBook);
	
	List<ContactUs> viewFeedback();
	
	int deleteFb(int sno);
}
