package com.Ethiopianized;


import java.security.Principal;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.crud.ProductRepo;
import com.crud.UserRepo;
import com.pojos.Message;

import com.pojos.Users;



@Controller
public class E_controller {
        @Autowired
       	ProductRepo pr;
	///controller to home page 
	@RequestMapping("/")
	public String home()
	{
		return"home";
	}
	
/// Controller to the signup page 
	
	@RequestMapping("signup")
	public String signup()
	{
		return "signup";
	}

//login page 
	
@RequestMapping("login")
public String login()
{
		return "login";
	}
	
//when the sign up from is submitted this register users 
	
   @Autowired
   UserRepo rep;
   //Proud
 @RequestMapping("/addUser")
 public ModelAndView addUser(Users User)
 {
	 Message ms = new Message();
	 
	 ModelAndView mv =new ModelAndView();
	 Users user =rep.findByUsername(User.getusername());
	 
	 if (user==null) {
	rep.save(User);
	mv.setViewName("login");
	return mv;
	}
	 else {
		 String message ="This username already exist  ";
		 ms.setMname(message);
		 mv.addObject("message",ms);
		 mv.setViewName("/signup");
		 return mv;
	 }
	
	 
 }
 /////we will log in user 
 
 @RequestMapping("LoginUser")
 public ModelAndView LoginUser(Principal principal) {
   
	
//	 System.out.print(users.getusername());
	 
	 ModelAndView mv = new ModelAndView();
//          String user=users.getusername();
//          System.out.println(users.getusername());
	 

	 if (principal == null) {
		 
		 Message ms = new Message();
		 
		 String message ="You Don't have acount would you like to sign up  ";
		 ms.setMname(message);
		  
		 mv.addObject("message",ms);
         mv.setViewName("signup");
//         System.out.print(ms.getMname());
		 return mv ;
	 }else
	     {

		 Users Cuser= rep.findByUsername(principal.getName());
		 
	 
	 mv.addObject("customer", Cuser);
	 mv.setViewName("Account");
    //System.out.println(mv);
	 return mv;
	
	
 }
 }
 
//update customers data 
 @RequestMapping("Update")
 
 public ModelAndView update(Principal principal,Users User) 
 {
	 
	 Message ms =new Message();
	 ms.setMname("Your Information has been updated!");
	 Users user = rep.findByUsername(principal.getName());
	 
	// id= User.getId();
	// Optional<Users> user = rep.findById(id);
	 
	 
     //User.setPassword(user.getPassword());
 
   // Users Customer = new Users();//creating a new object blank object 
 
    user.setusername(User.getusername());
    //user.setPassword(User.getPassword());
   user.setFirst_name(User.getFirst_name());
     System.out.print(User.getLast_name());
   user.setLast_name(User.getLast_name());
   user.setEmail(User.getEmail());
	 
	 
	 rep.save(user);
	 
	 ModelAndView mv = new ModelAndView();
	 
	 mv.addObject("message",ms);
	 mv.addObject("customer",user);

	 mv.setViewName("Account");
	 
	return mv;
	 
 }
 
 			
 /// this will take us too the learn with me pagae 
@RequestMapping("/learn")
   public String Learn(){
	   
	   return("learn");
	   
	     
   }


 
 
 @RequestMapping("/Mycart")
   public String Mycart() {
	 return("mycart");
 }
  }
  