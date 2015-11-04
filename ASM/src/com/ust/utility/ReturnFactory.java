package com.ust.utility;

import com.ust.model.BorrowedBean;

public class ReturnFactory {
	
	public static BorrowedBean getFactoryBean(String itemId, int idNum) {
		
		BorrowedBean returned = new BorrowedBean();
		//itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status
		
		returned.setItemId(itemId);
		returned.setIdNum(idNum);
		
		
		return returned;
	}
}
