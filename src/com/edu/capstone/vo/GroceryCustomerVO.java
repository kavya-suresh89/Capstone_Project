package com.edu.capstone.vo;

public class GroceryCustomerVO {
	
	private int order_id;
	private String first_name;
	private String last_name;
	private String mobile_no;
	private String email;
	private String enter_pwd;
	private String confirm_pwd;
	private String addressLine;
	private String city;
	private String zip;
	private String state;
	

	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddressLine() {
		return addressLine;
	}
	public void setAddressLine(String addressLine) {
		this.addressLine = addressLine;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEnter_pwd() {
		return enter_pwd;
	}
	public void setEnter_pwd(String enter_pwd) {
		this.enter_pwd = enter_pwd;
	}
	public String getConfirm_pwd() {
		return confirm_pwd;
	}
	public void setConfirm_pwd(String confirm_pwd) {
		this.confirm_pwd = confirm_pwd;
	}
	
	
	

}
