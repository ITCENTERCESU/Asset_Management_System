package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_EMPLOYEE = "insert into Employees(lastname, firstname, position, department) values(?,?,?,?)";
	String GET_ALL_EMPLOYEES = "select * from employees";
	
	String SEARCH_EMPLOYEE = "select * from employees where id=?";
	String UPDATE_EMPLOYEE = "update Employees set lastname = ?, "
		+ "firstname = ?, position=?, "
		+ "department=? where id = ?";
	
	String DELETE_EMPLOYEE = "delete from employees where id=?";
}
