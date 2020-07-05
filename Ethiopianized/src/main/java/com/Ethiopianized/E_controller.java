package com.Ethiopianized;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.crud.UserRepo;
import com.pojos.Message;
import com.pojos.Users;



@Controller
public class E_controller {

	///controller to home page 
	@RequestMapping("/")
	public String home()
	{
		return "home";
	}
	
	/// Controller to the signup page 
	
	@RequestMapping("signup")
	public String signup()
	{
		return "signup";
	}
//when the sign up from is submitted this register users 
	
   @Autowired
   UserRepo rep;

 @RequestMapping("/addUser")
 public String addUser(Users User)
 {
	rep.save(User);
	return "home";
	 
 }
 /////we will log in user 
 
 @RequestMapping("LoginUser")
 public ModelAndView LoginUser(@RequestParam String password) {
	
	 ModelAndView mv = new ModelAndView("Account");
//	String Uname =user.getUser_name();
	 List<Users> user = rep.findByPassword(password);
   
	 if (user.isEmpty()) {
		 
		 Message ms = new Message();
		 
		 String message ="You Don't have acount would you like to sign in  ";
		 ms.setMname(message);
		  
		 mv.addObject("message",ms);
         mv.setViewName("signup");
//         System.out.print(ms.getMname());
		 return mv ;
	 }else
	     {
	 Users Customer = new Users();//creating a new object blank object 
	 
	 Customer.setUser_name(user.get(0).getUser_name());
	 Customer.setPassword(user.get(0).getPassword());
	 Customer.setFirst_name(user.get(0).getFirst_name());
	 Customer.setLast_name(user.get(0).getLast_name());
	 Customer.setEmail(user.get(0).getEmail());
	 
	 System.out.println(Customer.getUser_name());
	 mv.addObject("customer",Customer);
    System.out.println(mv);
	 return mv;
	
	
 }
 }
  }
  