package com.Ethiopianized;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		 
		 String message ="You Don't have acount would you like to sign up  ";
		 ms.setMname(message);
		  
		 mv.addObject("message",ms);
         mv.setViewName("signup");
//         System.out.print(ms.getMname());
		 return mv ;
	 }else
	     {
	 Users Customer = new Users();//creating a new object blank object 
	 
	 Customer.setusername(user.get(0).getusername());
	 Customer.setPassword(user.get(0).getPassword());
	 Customer.setFirst_name(user.get(0).getFirst_name());
	 Customer.setLast_name(user.get(0).getLast_name());
	 Customer.setEmail(user.get(0).getEmail());
	 
	 System.out.println(Customer.getusername());
	 mv.addObject("customer",Customer);
    System.out.println(mv);
	 return mv;
	
	
 }
 }
 
//update customers data 
 @RequestMapping("Update")
 
 public ModelAndView update(@RequestParam String username,Users User) 
 {
	 
	 Message ms =new Message();
	 ms.setMname("Your Information has been updated!");
	 List<Users> user = rep.findByUsername(username);
	 
	 User.setPassword(user.get(0).getPassword());
	 
	 Users Customer = new Users();//creating a new object blank object 
	 
	 Customer.setusername(User.getusername());
	 Customer.setPassword(User.getPassword());
	 Customer.setFirst_name(User.getFirst_name());
	 Customer.setLast_name(User.getLast_name());
	 Customer.setEmail(User.getEmail());
	 
	 
	 rep.save(User);
	 
	 ModelAndView mv = new ModelAndView();
	 
	 mv.addObject("message",ms);
	 mv.addObject("customer",Customer);

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
  