package com.ust.utility;

import com.ust.model.*;

public class BeanFactory {
	
	public static UserBean getFactoryBean(String username, String password) {
		
		UserBean user = new UserBean();

		user.setUsername(username);
		user.setPassword(password);
		
		return user;
	}
}
