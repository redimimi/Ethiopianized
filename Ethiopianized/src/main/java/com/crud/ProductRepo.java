package com.crud;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pojos.Users;
import com.pojos.Products;

public interface ProductRepo extends JpaRepository<Products,Integer> {

}
