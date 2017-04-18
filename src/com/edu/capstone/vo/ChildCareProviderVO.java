package com.edu.capstone.vo;

import java.sql.Blob;

public class ChildCareProviderVO {
 
	private int idChildCare;
	private int categoryid;
	private String name;
	private String price_per_hour;
	private String location;
	private String experience;
	private String description;
	private String subjects;
	private String phonenumber;
	private String email;
	private String available;
	private String mode;
	private String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getIdChildCare() {
		return idChildCare;
	}
	public void setIdChildCare(int idChildCare) {
		this.idChildCare = idChildCare;
	}
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice_per_hour() {
		return price_per_hour;
	}
	public void setPrice_per_hour(String price_per_hour) {
		this.price_per_hour = price_per_hour;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSubjects() {
		return subjects;
	}
	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	
	
	
	
	
	
}