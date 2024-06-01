package edu.per.librarymanagement.Entity;

//import org.springframework.stereotype.Component;

//@Component
public class User {

	
	private int userId;
	private String userName;
	private int age;
	private String contactno;
	private String city;
	private String email;
	private String password;
	
	
	
	
	public User(int userId, String userName, int age, String contactno, String city, String email, String password) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.age = age;
		this.contactno = contactno;
		this.city = city;
		this.email = email;
		this.password = password;
	}




	public User() {
		//super();
		// TODO Auto-generated constructor stub
	}




	public int getUserId() {
		return userId;
	}




	public void setUserId(int userId) {
		this.userId = userId;
	}




	public String getUserName() {
		return userName;
	}




	public void setUserName(String userName) {
		this.userName = userName;
	}




	public int getAge() {
		return age;
	}




	public void setAge(int age) {
		this.age = age;
	}




	public String getContactno() {
		return contactno;
	}




	public void setContactno(String contactno) {
		this.contactno = contactno;
	}




	public String getCity() {
		return city;
	}




	public void setCity(String city) {
		this.city = city;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", age=" + age + ", contactno=" + contactno
				+ ", city=" + city + ", email=" + email + ", password=" + password + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
