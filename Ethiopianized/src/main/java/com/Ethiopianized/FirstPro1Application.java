package com.Ethiopianized;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Import;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import security.SecurityConfig;

@EnableJpaRepositories(basePackages="com.crud")
@EntityScan(basePackages="com.pojos")//we need to put where our database entity package 
@Import({SecurityConfig.class})



@SpringBootApplication

public class FirstPro1Application {

	public static void main(String[] args) {
		SpringApplication.run(FirstPro1Application.class, args);
	}

}
