package com.crud;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pojos.Users;


public interface UserRepo extends CrudRepository<Users,Integer>{

	
	List<Users> findByPassword(String password);
	List<Users> findByUsername(String username);
}