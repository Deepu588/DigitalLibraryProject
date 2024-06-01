package edu.per.librarymanagement.Entity;

public class ContactUs {

	private int sno;
	private String emailid;
	private String description;
	
	
	
	
	public ContactUs(int sno, String emailid, String description) {
		super();
		this.sno = sno;
		this.emailid = emailid;
		this.description = description;
	}




	public ContactUs() {
		super();
		// TODO Auto-generated constructor stub
	}




	public int getSno() {
		return sno;
	}




	public void setSno(int sno) {
		this.sno = sno;
	}




	public String getEmailid() {
		return emailid;
	}




	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	@Override
	public String toString() {
		return "ContactUs [sno=" + sno + ", emailid=" + emailid + ", description=" + description + "]";
	}

	
	
	
	
	
}