package com.crud;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.pojos.Users;


public interface UserRepo extends JpaRepository<Users,Integer>{

	
	List<Users> findByPassword(String password);
	List<Users> findByUsername(String username);
	
	
}
