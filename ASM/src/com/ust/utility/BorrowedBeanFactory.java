package com.ust.utility;


import com.ust.model.BorrowedBean;

public class BorrowedBeanFactory {
	
	public static BorrowedBean getFactoryBean(int itemId,  
			String borrowedDate) {
		
		BorrowedBean borrowed = new BorrowedBean();
	
		
		borrowed.setItemId(itemId);
	
		borrowed.setBorrowedDate(borrowedDate);
		
		
		return borrowed;
	}
}
