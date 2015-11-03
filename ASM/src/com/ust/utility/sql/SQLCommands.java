package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_ASSET = "insert into Inventory(itemId, itemName, status) values(?,?,?)";
	String GET_ALL_EMPLOYEES = "select * from employees";
	
	String SEARCH_EMPLOYEE = "select * from employees where id=?";
	String UPDATE_EMPLOYEE = "update Employees set lastname = ?, "
		+ "firstname = ?, position=?, "
		+ "department=? where id = ?";
	
	String DELETE_EMPLOYEE = "delete from employees where id=?";
}
