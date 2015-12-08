package com.ust.utility;

import com.ust.model.BorrowersBean;

public class BorrowersBeanFactory {
	public static BorrowersBean getFactoryBean(int idNum, String lastName,  
			String firstName, String contactNumber, String email) {
		
		BorrowersBean borrowers = new BorrowersBean();
	
		
		borrowers.setIdNum(idNum);
		borrowers.setLastName(lastName);
		borrowers.setFirstName(firstName);
		borrowers.setContactNumber(contactNumber);
		borrowers.setEmail(email);
		
		return borrowers;
	}
}
