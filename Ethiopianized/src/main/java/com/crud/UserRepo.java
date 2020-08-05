package com.crud;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pojos.Users;

@Repository
public interface UserRepo extends JpaRepository<Users,Integer>{

	Users findByUsername(String username);
	
	List<Users> findByPassword(String password);
	//List<Users> findByUsername1(String username);
	
	
}
