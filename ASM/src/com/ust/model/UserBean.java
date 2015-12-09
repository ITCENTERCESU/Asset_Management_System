package com.ust.model;

import com.ust.utility.Security;

public class UserBean {
	public String lastName;
	public String firstName;
	public String username;
	public String password;
	
	public String getLastName() {
		return lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = Security.encrypt(password);
	}
	
	
}
