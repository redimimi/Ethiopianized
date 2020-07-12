package com.pojos;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity 
public class Products {
	@Id
	private int pid;
	private String Pname;
	private String color;
	private String image;
	private int price;
	private int size;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public boolean isAvelable() {
		return avelable;
	}
	public void setAvelable(boolean avelable) {
		this.avelable = avelable;
	}
	
	
	

}
