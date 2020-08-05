package com.crud;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pojos.Products;

@Repository
public interface ProductRepo extends JpaRepository<Products,Integer> {

	List<Products> findByImage(String image);
	
}
