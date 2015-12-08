package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_ASSET = "INSERT INTO Inventory(itemName, category, status) VALUES(?,?,?)";
	String GET_ALL_ASSET = "SELECT * FROM Inventory";

	String GET_AVAILABLE_LIST = "SELECT itemId, itemName, category, status FROM Inventory WHERE status='available'" ;
	
	String SEARCH_ASSET = "SELECT * FROM Inventory WHERE itemId=? AND status='available'";
	
	String INSERT_BORROWED = "INSERT INTO Borrowed(itemId,idNum, borrowedDate,dueDate, returnDate) "
			+ "VALUES (?,?,?,?,NULL);"
			+ ""
			+ "UPDATE Inventory SET status='unavailable' "
			+ "FROM Inventory, Borrowed "
			+ "WHERE Inventory.itemId = Borrowed.itemId;";
	
	String INSERT_BORROWERS ="INSERT INTO Borrowers(idNum, lastName, firstName, contactNumber, email)"
			+ "VALUES (?,?,?,?,?)";
	
	String RETURN_BORROWED = "UPDATE Borrowed SET status='available' FROM Borrowed "
			+ "WHERE itemId=? AND idNum=?;" 
			+ ""
			+ "DELETE FROM Borrowed WHERE status='available';"
			+ ""
			+ "UPDATE Inventory SET status= 'available' FROM Inventory WHERE itemId=?";

	String SELECT_USERPW = "SELECT password FROM Users WHERE username=?";
	
	String GET_CURRENTLY_BORROWING ="SELECT Borrowed.itemId, Inventory.itemName, Borrowed.borrowedDate, Borrowed.dueDate "
			+ "FROM Borrowed "
			+ "INNER JOIN Inventory	"
			+ "ON Borrowed.itemId = Inventory.itemId AND Borrowed.idNum =?;";
	String DELETE_ITEM = "DELETE FROM Inventory WHERE itemId=?";
	
	
	
	
	
	
	
}
