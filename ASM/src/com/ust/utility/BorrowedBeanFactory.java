package com.ust.utility;


import com.ust.model.BorrowedBean;

public class BorrowedBeanFactory {
	
	public static BorrowedBean getFactoryBean(int itemId, String itemName,  
			String borrowedDate, String dueDate) {
		
		BorrowedBean borrowed = new BorrowedBean();
	
		
		borrowed.setItemId(itemId);
		borrowed.setItemName(itemName);
		borrowed.setBorrowedDate(borrowedDate);
		borrowed.setDueDate(dueDate);
		
		
		return borrowed;
	}
}
