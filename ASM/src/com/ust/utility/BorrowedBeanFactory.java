package com.ust.utility;


import com.ust.model.BorrowedBean;

public class BorrowedBeanFactory {
	
	public static BorrowedBean getFactoryBean(String itemId, String itemName,
			int idNum, String lastName, String firstName,  
			String borrowedDate, String dueDate, String status) {
		
		BorrowedBean borrowed = new BorrowedBean();
	
		
		borrowed.setItemId(itemId);
		borrowed.setItemName(itemName);
		borrowed.setIdNum(idNum);
		borrowed.setLastName(lastName);
		borrowed.setFirstName(firstName);
		borrowed.setBorrowedDate(borrowedDate);
		borrowed.setDueDate(dueDate);
		borrowed.setStatus(status);
		
		return borrowed;
	}
}
