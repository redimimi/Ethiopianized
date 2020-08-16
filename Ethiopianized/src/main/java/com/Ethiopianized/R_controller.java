package com.Ethiopianized;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RestController;

import com.crud.ProductRepo;
import com.pojos.Products;


@RestController
public class R_controller {
	
	
	
	
	
	@Autowired
	ProductRepo repo;
	@GetMapping("/api/images/{image}") 
	public List<Products> getproductbyimage(@PathVariable String image)
	{
		 List<Products> prod = repo.findByImage(image);
		 repo.saveAll(prod);
		 
	  return prod;	
	}
	
	

	
	
	
	
	

}
