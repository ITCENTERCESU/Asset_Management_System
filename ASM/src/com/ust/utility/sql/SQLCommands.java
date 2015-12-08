package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_ASSET = "INSERT INTO Inventory(itemId, itemName, status) VALUES(?,?,?)";
	String GET_ALL_ASSET = "SELECT * FROM Inventory";

	String GET_AVAILABLE_LIST = "SELECT itemId, itemName, status FROM Inventory WHERE status='available'" ;
	
	String SEARCH_ASSET = "SELECT * FROM Inventory WHERE itemId=? AND status='available'";
	
	String INSERT_BORROWED = "INSERT INTO Borrowed(itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status) "
			+ "VALUES (?,?,?,?,?,?,?,?);"
			+ ""
			+ "UPDATE Inventory SET status='unavailable' "
			+ "FROM Inventory, Borrowed "
			+ "WHERE Inventory.itemId = Borrowed.itemId;";
	
	
	String RETURN_BORROWED = "UPDATE Borrowed SET status='available' FROM Borrowed "
			+ "WHERE itemId=? AND idNum=?;" 
			+ ""
			+ "DELETE FROM Borrowed WHERE status='available';"
			+ ""
			+ "UPDATE Inventory SET status= 'available' FROM Inventory WHERE itemId=?";

	String SELECT_USERPW = "SELECT password FROM Users WHERE username=?";
	
	String GET_CURRENTLY_BORROWING ="SELECT itemId, itemName, borrowedDate, dueDate "
			+ "FROM Borrowed "
			+ "WHERE idNum=?";
	
	String DELETE_ITEM = "DELETE FROM Inventory WHERE itemId=?";
	
	
	
}
