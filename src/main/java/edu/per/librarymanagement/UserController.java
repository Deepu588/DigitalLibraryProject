package edu.per.librarymanagement;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.IOUtils;
//import org.apache.tomcat.util.file.ConfigurationSource.Resource;
//import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.ServletContext;

import edu.per.librarymanagement.Entity.Admin;
import edu.per.librarymanagement.Entity.ContactUs;
import edu.per.librarymanagement.Entity.FreeBook;
import edu.per.librarymanagement.Entity.User;
import edu.per.librarymanagement.Entity.UserDao;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;
	
@RequestMapping("signup")	
public String goNext()  {
	System.out.println("EXECUTED");
	return "UserRegister";
}



@RequestMapping("addUser")
public ModelAndView signUp(@ModelAttribute User user,@RequestParam("cpassword") String cpassword) {
	ModelAndView mv=new ModelAndView();
	System.out.println(user);
	if(user.getContactno().length()==10  &&  user.getPassword().length()>4  && user.getAge()<=100  && user.getEmail().endsWith("@gmail.com") && user.getPassword().equals(cpassword)) {
	if(userDao.addUser(user)==1) {
	mv.setViewName("login");
	mv.addObject("info", "created account successfully ");
}}
	else {
		mv.setViewName("UserRegister");
		mv.addObject("inf", "Account Creation Failed !! Try Again.. ");

	}
	return mv;
}



@RequestMapping("signin")	
public String goNext1()  {
	//System.out.println("EXECUTED");
	return "login";
}



//@RequestMapping("checkUser")
//public ModelAndView signIn(@RequestParam("email") String email,@RequestParam("password") String password,HttpServletRequest request) {
//	
//	ModelAndView mv=new ModelAndView();
//	User user=userDao.checkUser(email, password);
//	
//	if(user!=null) {
//		HttpSession session=request.getSession();
//		session.setAttribute("userInfo", user);
//	//System.out.println("User = "+user);
//	mv.setViewName("Home");
//	mv.addObject("userDetails", "Login Successful.");
//	return mv;
//	}
//	
//	else {
//		mv.setViewName("login");
//		mv.addObject("msg", "Login Failed ");
//	    return mv;
//	}
//}



@RequestMapping("logout")
public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
    HttpSession session = request.getSession(false);
	ModelAndView mv=new ModelAndView();

    if (session != null) {
        session.invalidate();
    }
    mv.setViewName("login");
    mv.addObject("fm","You are Logged Out...");
    return mv;
     // Redirect to the login page
}

@RequestMapping("fpwd")
public String getPassword() {
	return "fpassword";
}


@RequestMapping("getPassword")
public ModelAndView checkingPassword(@RequestParam("email") String email) {
	
	ModelAndView mv=new ModelAndView();
	
	User u=userDao.getPassword(email);
	if(u!=null) {
		mv.addObject("password",u.getPassword());
		mv.setViewName("login");
	}
	else {
		mv.addObject("noEmail","Email not exists! Create An Account now");
		mv.setViewName("UserRegister");
	}
	return mv;
}


@RequestMapping("contact")
public String getContact() {
	return "contact";
}
@RequestMapping("about")
public String getAboutPage() {
	return "About";
}
//
@RequestMapping("adminhome")
public String getAHome() {
	return "AdminHome";
}

@RequestMapping("viewusers")
public ModelAndView getUsers() {
    ModelAndView mv = new ModelAndView();
    List<User> l = userDao.viewAllUsers();
    if (l != null) {
        mv.addObject("allUsers", l);
    }
    mv.setViewName("ViewUser");
    return mv;
}

@RequestMapping("profile")
public String getProfile(Model model, HttpSession session) {
    // Get the user ID from the session
	User un=(User)session.getAttribute("userInfo");
    
    // Fetch the user by ID
    User user = userDao.findUserById(un.getUserId());
    
    // Add the user to the model
    model.addAttribute("user", user);
    
    // Return the name of the view
    return "Profile";
}


@RequestMapping("feedback")
public ModelAndView getFeedback(@RequestParam("email") String email,@RequestParam("feedback") String feedback) {
	
	ModelAndView mv=new ModelAndView();
	if((userDao.addFeedback(email, feedback)!=0)){
		mv.addObject("fdmsg", "Feedback sent Successfully");
		mv.setViewName("contact");
	}
	
	return mv;
}


@RequestMapping("checkAdmin")
public ModelAndView checkAdm(@RequestParam("emailid") String email,@RequestParam("pass") String password) {
	ModelAndView mv=new ModelAndView();
	Admin admin=userDao.checkAdmin(email, password);
	
	if(admin!=null) {
	//	HttpSession session=request.getSession();
		//session.setAttribute("userInfo", user);
//	System.out.println("User = "+user);
	mv.setViewName("AdminHome");
	mv.addObject("userDetails", "Login Successful.");
	return mv;
	}
	
	else {
		mv.setViewName("login");
		mv.addObject("msg", "Login Failed ");
	    return mv;
	}}





@RequestMapping("Profile")
public String updateuser(@ModelAttribute User user,Model m) {
	//ModelAndView mv=new ModelAndView();
	//System.out.println(user+" checkk");
	if(userDao.updateUserInfo(user)!=0) {
		//System.out.println("doneeee");
		//m.addObject("pum", "Profile Updated Successfully");
		m.addAttribute("pum", "Profile Updated Successfully");
	//	mv.setViewName("Profile");
	}
	else {
		System.out.println("not done");
	}
	return "Profile";




}

@RequestMapping("deleteUser")
public ModelAndView deleteuser(@RequestParam("uid") int userId) {
    ModelAndView mv = new ModelAndView();
    
    // Delete the user
    if (userDao.deleteTheUser(userId) != 0) {
        mv.addObject("dm", "Deleted User Successfully");
    } else {
        mv.addObject("dm", "Failed to Delete User");
    }
    
    // Refresh the list of users
    List<User> l = userDao.viewAllUsers();
    if (l != null) {
        mv.addObject("allUsers", l);
    }
    
    mv.setViewName("ViewUser");
    return mv;
}


}

















