package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_ASSET = "INSERT INTO Inventory(itemId, itemName, status) VALUES(?,?,?)";
	String GET_ALL_ASSET = "SELECT * FROM Inventory";

	String GET_BORROWED_LIST = "SELECT itemId, itemName, status FROM Inventory WHERE status='available'" ;
	
	String SEARCH_ASSET = "SELECT * FROM Inventory WHERE itemId=? AND status='available'";
	
	String INSERT_BORROWED = "INSERT INTO Borrowed(itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status) "
			+ "VALUES (?,?,?,?,?,?,?,?);"
			+ ""
			+ "UPDATE Inventory SET status='unavailable' "
			+ "FROM Inventory, Borrowed "
			+ "WHERE Inventory.itemId = Borrowed.itemId;";
	
	
	String RETURN_BORROWED = "UPDATE Inventory SET status='available' "
			+ "FROM Inventory, Borrowed "
			+ "WHERE Inventory.itemId = Borrowed.itemId AND Inventory.idNum = Borrowed.idNum;"
			+ ""
			+ "DELETE FROM Borrowed WHERE itemId=? AND idNum=?";
	
	//"SELECT itemId, itemName, status FROM Inventory WHERE itemId IN(SELECT itemId FROM Inventory WHERE status='available' INTERSECT SELECT itemId FROM Borrowed)";	
	
	//itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status
	
	
	
	String UPDATE_STATUS = "UPDATE Inventory SET status='unavailable' "
			+ "FROM Inventory, Borrowed "
			+ "WHERE Inventory.itemId = Borrowed.itemId;";
	
	String DELETE_EMPLOYEE = "delete from employees where id=?";
	
	
	
	//SELECT Inventory.itemId, Inventory.itemName, "
	//+ "Borrowed.idNum,	Borrowed.lastName,	Borrowed.firstName,	Borrowed.borrowedDate,"
	//+ "Borrowed.dueDate, Inventory.status FROM Inventory, Borrowed WHERE"
	//	+"Inventory.itemId = Borrowed.itemId;
}
