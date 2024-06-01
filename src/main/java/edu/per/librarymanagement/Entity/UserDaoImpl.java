package edu.per.librarymanagement.Entity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDaoImpl implements UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int addUser(User user) {
		// TODO Auto-generated method stub
        String query="insert into users (username,age,contactno,city,email,password) values (?,?,?,?,?,?)";
		return jdbcTemplate.update(query,user.getUserName(),user.getAge(),user.getContactno(),user.getCity(),user.getEmail(),user.getPassword());
	
	}
	

	public User checkUser(String email, String password) {
		// TODO Auto-generated method stub
		String query="select * from users where email=? and password=?";
		BeanPropertyRowMapper<User> rm=BeanPropertyRowMapper.newInstance(User.class);
		try{
			return jdbcTemplate.queryForObject(query,rm,email,password);
		}
		catch(Exception e) {
			return null;
		}
	}


	public User	 getPassword(String email) {
		// TODO Auto-generated method stub
		String query="select * from users where email=?";
		BeanPropertyRowMapper<User> rm=BeanPropertyRowMapper.newInstance(User.class);
		try{
			return jdbcTemplate.queryForObject(query,rm,email);
		}
		catch(Exception e) {
			return null;
		}	}


	public int addFeedback(String email, String feedback) {
		// TODO Auto-generated method stub
		
		String query="insert into contactus (emailid,description) values(?,?)";
	return 	jdbcTemplate.update(query,email,feedback);
		
	}


	public Admin checkAdmin(String email, String password) {
		String query="select * from admin where email=? and password=?";
		BeanPropertyRowMapper<Admin> rm=BeanPropertyRowMapper.newInstance(Admin.class);
		try{
			return jdbcTemplate.queryForObject(query,rm,email,password);
		}
		catch(Exception e) {
			return null;
		}
	}


	public User findUserById(int userid) {
		// TODO Auto-generated method stub
		
		String query="select * from users where userid=?";
		BeanPropertyRowMapper<User> rm=BeanPropertyRowMapper.newInstance(User.class);
		System.out.println(userid+" uid");
		
		try{
			return jdbcTemplate.queryForObject(query,rm,userid);
		}
		catch(Exception e) {
			return null;
		}	}


	public int updateUserInfo(User user) {
		// TODO Auto-generated method stub
	//	System.out.println(user+" meth");
		String query="update users set username=?,age=?,contactno=?,city=?,email=?,password=? where userid=?";
		
	return	jdbcTemplate.update(query,user.getUserName(),user.getAge(),user.getContactno(),user.getCity(),user.getEmail(),user.getPassword(),user.getUserId());
		
	}


	public List<User> viewAllUsers() {
		// TODO Auto-generated method stub
		String query="select * from users";
		BeanPropertyRowMapper<User> rm=BeanPropertyRowMapper.newInstance(User.class);
		return jdbcTemplate.query(query,rm);
	}

	
	public int deleteAll(int sno) {
		// TODO Auto-generated method stub
		String query="delete from contactus where sno=?";
		return jdbcTemplate.update(query,sno);
	}


	public int deleteTheUser(int userId) {
		// TODO Auto-generated method stub
		
		String query="delete from users where userid=?";
		return jdbcTemplate.update(query,userId);
	}

}
