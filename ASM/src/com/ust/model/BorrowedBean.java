package com.ust.model;


public class BorrowedBean {
	
	public int num;
	public int itemId;
	public int idNum;
	
	public String borrowedDate;
	public String returnDate;

	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	public int getIdNum() {
		return idNum;
	}
	public void setIdNum(int idNum) {
		this.idNum = idNum;
	}
	public String getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
	
	public String getBorrowedDate() {
		return borrowedDate;
	}
	public void setBorrowedDate(String borrowedDate) {
		this.borrowedDate = borrowedDate;
	}
	
	
	
	
	
}
