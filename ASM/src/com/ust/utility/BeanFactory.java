package com.ust.utility;

import com.ust.model.*;

public class BeanFactory {
	
	public static UserBean getFactoryBean(String lastName, String firstName, String username, String password) {
		
		UserBean user = new UserBean();
		
		user.setLastName(lastName);
		user.setFirstName(firstName);
		user.setUsername(username);
		user.setPassword(password);
		
		return user;
	}
}
