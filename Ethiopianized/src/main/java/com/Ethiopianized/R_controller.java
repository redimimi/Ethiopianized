package com.Ethiopianized;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RestController;

import com.crud.UserRepo;
import com.pojos.Users;

@RestController
public class R_controller {
	
	@Autowired
	UserRepo repo;
	@GetMapping("users") 
	public List<Users> getalluser()
	{
	  List<Users> user = (List<Users>) repo.findAll();
		     
	  return user;	
	}

}
