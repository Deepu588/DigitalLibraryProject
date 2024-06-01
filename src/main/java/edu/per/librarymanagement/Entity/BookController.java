package edu.per.librarymanagement.Entity;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {

	@Autowired
	private FreeBookDao freeBookDao;
	@Autowired

	private UserDao userDao;
	
	@RequestMapping("addFreeBookPage")
	public String getAddFB() {
		return "AddFreeBook";
	}
	
//	@RequestMapping("about")
//	public String getAbout() {
//		return "About";
//	}
//	
	
	
	@RequestMapping("addFreeBook")
	public ModelAndView addFreeBook(@ModelAttribute FreeBook freeBook ) {
		ModelAndView mv=new ModelAndView();
		if(freeBookDao.addFreeBook(freeBook)!=0) {
			mv.addObject("Sum","Book Added Successfully");
		}
		else {
			mv.addObject("Sum","Failed to add book !! Try Again...");

		}			mv.setViewName("AddFreeBook");

		return mv;
	}
	
	
	@RequestMapping("home")
	public String getHome(Model m) {
		List<FreeBook> l=freeBookDao.viewAllFreeBooks();
		System.out.println(l+" for home");
		m.addAttribute("listOfFreeBooks",l);
		return "Home";
	}

	
	
	
	
	@RequestMapping("checkUser")
	public ModelAndView signIn(@RequestParam("email") String email,@RequestParam("password") String password,HttpServletRequest request) {
		
		ModelAndView mv=new ModelAndView();
		User user=userDao.checkUser(email, password);
		
		if(user!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("userInfo", user);
		//System.out.println("User = "+user);
			List<FreeBook> l=freeBookDao.viewAllFreeBooks();
			System.out.println(l+" for home");
		mv.setViewName("Home");
		mv.addObject("userDetails", "Login Successful.");
		mv.addObject("listOfFreeBooks",l);
		return mv;
		}
		
		else {
			mv.setViewName("login");
			mv.addObject("msg", "Login Failed ");
		    return mv;
		}
	}

	
	
	
	
	
	
	
	
	@RequestMapping("viewfbook")
	public ModelAndView viewfb() {
		ModelAndView mv=new ModelAndView();
		List<FreeBook> l=freeBookDao.viewAllFreeBooks();
		if(l!=null) {
			mv.addObject("listOfFreeBooks",l);
		}
		mv.setViewName("ViewFreeBook");
		return mv;
	}

	@RequestMapping("getfeedback")
	public ModelAndView getFeedback() {
		ModelAndView mv=new ModelAndView();
		List<ContactUs> l=freeBookDao.viewFeedback();
							if(l!=null) {
								mv.addObject("feedback", l);
								System.out.println(l);
							}
							mv.setViewName("ViewFeedback");
		return mv;
	}
	
	@RequestMapping("updateFbook")
	public ModelAndView updatefBook(@RequestParam("bookid") int bookId) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("bookDetails",freeBookDao.getBook(bookId));
		mv.setViewName("UpdateFreeBook");
         return mv;
	}
	
	
	@RequestMapping("deleteFeedback")
	public ModelAndView deleteFeedback(@RequestParam("sno") int sno) {
		ModelAndView mv=new ModelAndView();
		if(freeBookDao.deleteFb(sno)!=0) {
		 mv.addObject("dm","Deleted  Successfully");
		mv.setViewName("ViewFeedback");
		}
		
		List<ContactUs> l = freeBookDao.viewFeedback();
	    if (l != null) {
	        mv.addObject("feedback", l);
	    }
		return mv;
	}
	
	
	@RequestMapping("deleteFbook")
	public ModelAndView deleteFbook(@RequestParam("bookid") int bookId) {
		ModelAndView mv=new ModelAndView();
		if(freeBookDao.deleteFbook(bookId)!=0) {
		 mv.addObject("dm","Deleted Book Successfully");
		mv.setViewName("ViewFreeBook");
		}
		
		List<FreeBook> l = freeBookDao.viewAllFreeBooks();
	    if (l != null) {
	        mv.addObject("listOfFreeBooks", l);
	    }
		return mv;
	}
	
		
	
	
	
	
//	@RequestMapping("uppp")
//	public String getUpdate() {
//		return "UpdateFreeBook";
//	}
	
//	
//	@PostMapping("updatebookdetails")
//    public ModelAndView updateBookInfo(@ModelAttribute("freeBook") FreeBook freeBook) {
//        ModelAndView mv = new ModelAndView();
//        if (freeBookDao.updateBook(freeBook) != 0) {
//            System.out.println("updated bookkkkkkk");
//            mv.setViewName("ViewFreeBook");
//            mv.addObject("um", "Updated Successfully");
//        }
//        return mv;
//    }

	
	@PostMapping("ViewFreeBook")
	public String updateBookInfo(@ModelAttribute FreeBook freeBook, Model model) {
	  // System.out.println("mapppppping............");
	   //System.out.println(freeBook);
	   //System.out.println(freeBookDao.updateBook(freeBook));
		if (freeBookDao.updateBook(freeBook) != 0) {
	        System.out.println("updated bookkkkkkk");
	        model.addAttribute("um", "Updated Successfully");
	        List<FreeBook> listOfFreeBooks = freeBookDao.viewAllFreeBooks();
	        model.addAttribute("listOfFreeBooks", listOfFreeBooks);

	        return "ViewFreeBook";
	    } else {
	        model.addAttribute("errorMessage", "Failed to update book");
	        return "UpdateFreeBook";
	    }
	}

	
	
	
	
	
	
	
}
