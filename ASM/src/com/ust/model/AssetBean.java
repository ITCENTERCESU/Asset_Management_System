package com.ust.model;

public class AssetBean {
	private String itemId;
	private String itemName;
	static String status;
	
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
		
		status = "available";
	}
	public static String getStatus() {
		return status;
	}

	
	

	
	
}
