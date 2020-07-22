package com.pojos;

import javax.persistence.Entity;

import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component 
@Entity 
public class Products {
	@Id
	private int pid;
	private String Pname;
	private String color;
	private String image;
	private String price;
	private String size;
	private boolean avelable;
	
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public boolean isAvelable() {
		return avelable;
	}
	public void setAvelable(boolean avelable) {
		this.avelable = avelable;
	}
	
	
	

}
