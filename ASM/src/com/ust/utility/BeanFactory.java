package com.ust.utility;

import com.ust.model.EmployeeBean;

public class BeanFactory {
	
	public static EmployeeBean getFactoryBean(String lastName, 
		String firstName, String position, 
		String department) {
		
		EmployeeBean employee = new EmployeeBean();
		employee.setLastName(lastName);
		employee.setFirstName(firstName);
		employee.setPosition(position);
		employee.setDepartment(department);
		return employee;
	}
}
