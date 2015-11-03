package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_ASSET = "INSERT INTO Inventory(itemId, itemName, status) VALUES(?,?,?)";
	String GET_ALL_ASSET = "SELECT * FROM Inventory";
	
	
	
	String SEARCH_EMPLOYEE = "select * from employees where id=?";
	String UPDATE_EMPLOYEE = "update Employees set lastname = ?, "
		+ "firstname = ?, position=?, "
		+ "department=? where id = ?";
	
	String DELETE_EMPLOYEE = "delete from employees where id=?";
}
