package edu.per.librarymanagement.Entity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class FreeBookDaoImpl implements FreeBookDao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int addFreeBook(FreeBook freeBook) {
		// TODO Auto-generated method stub
		
        String query="insert into freebook (bookname,authorname,pdate,booktype,booklink) values(?,?,?,?,?)";
		return jdbcTemplate.update(query,freeBook.getBookName(),freeBook.getAuthorName(),freeBook.getpDate(),freeBook.getBookType(),freeBook.getBookLink());	
	}

	public List<FreeBook> viewAllFreeBooks() {
		// TODO Auto-generated method stub
		String query="select * from freebook";
		
		BeanPropertyRowMapper<FreeBook> rm=BeanPropertyRowMapper.newInstance(FreeBook.class);
		return jdbcTemplate.query(query,rm);
		
	}

	
	
	
	public FreeBook getBook(int bookid) {
		// TODO Auto-generated method stub
		String query="select * from freebook where bookid=?";
		BeanPropertyRowMapper<FreeBook> rm=BeanPropertyRowMapper.newInstance(FreeBook.class);
		return jdbcTemplate.queryForObject(query, rm,bookid);
      
      
	}

	public int deleteFbook(int bookid) {
		// TODO Auto-generated method stub
		String query="delete from freebook where bookid=?";
		return jdbcTemplate.update(query,bookid);
		
	}

	public int updateBook(FreeBook freeBook) {
		// TODO Auto-generated method stub
		String query="update freebook set bookname=?,authorname=?,pdate=?,booktype=?,booklink=? where bookid=?";
		return jdbcTemplate.update(query,freeBook.getBookName(),freeBook.getAuthorName(),freeBook.getpDate(),freeBook.getBookType(),freeBook.getBookLink(),freeBook.getBookId());
	}

	
	public List<ContactUs> viewFeedback() {
		// TODO Auto-generated method stub
		
		String query="select * from contactus";

		BeanPropertyRowMapper<ContactUs> rm=BeanPropertyRowMapper.newInstance(ContactUs.class);
		return jdbcTemplate.query(query,rm);
			}

	public int deleteFb(int sno) {
		// TODO Auto-generated method stub
		String query="delete from contactus where sno=?";
		return jdbcTemplate.update(query,sno);
	}

	
}
