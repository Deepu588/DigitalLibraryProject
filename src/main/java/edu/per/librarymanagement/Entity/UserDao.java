package edu.per.librarymanagement.Entity;
import java.util.List;
//import java.beans.JavaBean;

//import org.springframework.context.annotation.EnableMBeanExport;
//import org.springframework.stereotype.Component;

//@Component

public interface UserDao {

	int addUser(User user);
	User checkUser(String email,String password);
	
	 User getPassword(String email);
	 int addFeedback(String email,String feedback);
	 
	 Admin checkAdmin(String email,String password);
	 User findUserById(int userid);
	 
	 
	 int updateUserInfo(User user);
	 List<User> viewAllUsers();
	 int deleteTheUser(int userId);
}
