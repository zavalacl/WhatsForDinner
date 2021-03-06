package com.zavala.whatsfordinner;

public class Customer {
	private int customerID;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String cookbook;

	public Customer() {
		super();
	}

	public Customer(int customerID, String firstName, String lastName, String email, String password, String cookbook) {
		super();
		this.customerID = customerID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.cookbook = cookbook;
	}
	
	public String getCookbook(){
		return cookbook;
	}
	
	public void setCookbook(String cookbook){
		this.cookbook = cookbook;
		
	}
	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}