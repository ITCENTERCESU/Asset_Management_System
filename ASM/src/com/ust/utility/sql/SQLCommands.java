package com.ust.utility.sql;
public interface SQLCommands {

	String INSERT_ASSET = "INSERT INTO Inventory(itemId, itemName, status) VALUES(?,?,?)";
	String GET_ALL_ASSET = "SELECT * FROM Inventory";

	String GET_BORROWED_LIST = "SELECT Inventory.itemId, Inventory.itemName, "
			+ "Borrowed.idNum,	Borrowed.lastName,	Borrowed.firstName,	Borrowed.borrowedDate,"
			+ "Borrowed.dueDate, Inventory.status FROM Inventory, Borrowed WHERE"
				+"Inventory.itemId = Borrowed.itemId;";

			//"SELECT itemId, itemName, status FROM Inventory WHERE itemId IN(SELECT itemId FROM Inventory WHERE status='available' INTERSECT SELECT itemId FROM Borrowed)";
	
	
	String SEARCH_ASSET = "SELECT * FROM Inventory WHERE itemId=? AND status='available'";
	
	//itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status
	
	String INSERT_BORROWED = "INSERT INTO Borrowed(itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status) VALUES (?,?,?,?,?,?,?,?)";
	
	
	String UPDATE_EMPLOYEE = "update Employees set lastname = ?, "
		+ "firstname = ?, position=?, "
		+ "department=? where id = ?";
	
	String DELETE_EMPLOYEE = "delete from employees where id=?";
}
