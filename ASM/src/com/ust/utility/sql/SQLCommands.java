package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_ASSET = "INSERT INTO Inventory(itemId, itemName, status) VALUES(?,?,?)";
	String GET_ALL_ASSET = "SELECT * FROM Inventory";

	String GET_BORROWED_LIST = "SELECT itemId, itemName, status FROM Inventory WHERE itemId IN(SELECT itemId FROM Inventory WHERE status='unavailable' INTERSECT SELECT itemId FROM Borrowed)";
	
	
	String UPDATE_EMPLOYEE = "update Employees set lastname = ?, "
		+ "firstname = ?, position=?, "
		+ "department=? where id = ?";
	
	String DELETE_EMPLOYEE = "delete from employees where id=?";
}
