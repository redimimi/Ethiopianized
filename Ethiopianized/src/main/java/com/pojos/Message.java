package com.pojos;

import org.springframework.stereotype.Component;

@Component 
public class Message {
	
	private String Mname;

	public String getMname() {
		return Mname;
	}

	public void setMname(String mname) {
		Mname = mname;
	}

	
	
}
