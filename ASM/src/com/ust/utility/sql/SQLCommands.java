package com.ust.utility.sql;

public interface SQLCommands {

	String INSERT_ASSET = "INSERT INTO Inventory(itemName, category, status, deleted) "
			+ "VALUES(?,?,?,1)";
	
	String GET_ALL_ASSET = "SELECT * FROM Inventory "
			+ "WHERE deleted=1";

	String GET_AVAILABLE_LIST = "SELECT itemId, itemName, category, status "
			+ "FROM Inventory "
			+ "WHERE status='available' AND deleted=1" ;
	
	
	
	String GET_NOT_AVAILABLE_LIST = "SELECT Borrowed.itemId, Inventory.itemName, Inventory.category, "
				+ "Borrowers.idNum, Borrowers.lastName, Borrowers.firstName, Borrowers.contactNumber, Borrowers.email "
			+ "FROM Inventory INNER JOIN Borrowed "
			+ "ON Borrowed.itemId = Inventory.itemId "
			+ "INNER JOIN Borrowers "
			+ "ON Borrowers.idNum = Borrowed.idNum "
			+ "AND Borrowed.returnDate = 'NULL' "
			+ "AND status='unavailable' AND deleted=1" ; 
	
	String SEARCH_ASSET = "SELECT * "
			+ "FROM Inventory "
			+ "WHERE itemId=? AND status='available' AND deleted=1";
	
	String SEARCH_BORROWED = "SELECT * "
			+ "FROM Borrowed "
			+ "WHERE itemId=? AND returnDate='NULL'";
	
	String SEARCH_BORROWERS = "SELECT TOP 1 * "
			+ "FROM Borrowers "
			+ "WHERE idNum=? ";
	
	
	String SEARCH_BORROWER_DETAILS = "SELECT TOP 1 Borrowed.itemId, Inventory.itemName, Borrowers.idNum, Borrowers.lastName, Borrowers.firstName, Borrowers.contactNumber, Borrowers.email "
			+ "FROM Inventory, Borrowed, Borrowers "
			+ "WHERE Inventory.itemId=? AND Borrowed.idNum=?"
			+ "AND Inventory.itemId = Borrowed.itemId 	"
			+ "AND Borrowers.idNum = Borrowed.idNum "
			+ "AND Inventory.status='unavailable' "
			+ "AND Inventory.deleted=1;";
	
	
	String INSERT_BORROWED = "INSERT INTO Borrowed(num, itemId,idNum, borrowedDate,returnDate) "
			+ "VALUES ((SELECT ISNULL(MAX(num),0)+1 FROM Borrowed),?,?,?,'NULL');"
			+ ""
			+ "UPDATE Inventory SET status='unavailable' "
			+ "FROM Inventory, Borrowed "
			+ "WHERE Inventory.itemId = Borrowed.itemId AND Borrowed.itemId=?;";
	
	String INSERT_BORROWERS ="INSERT INTO Borrowers(idNum, lastName, firstName, contactNumber, email)"
			+ "VALUES (?,?,?,?,?)";
	
	
	String GET_CURRENTLY_BORROWING ="SELECT Borrowed.itemId, Inventory.itemName, Borrowed.borrowedDate "
			+ "FROM Borrowed INNER JOIN Inventory "
			+ "ON Borrowed.itemId = Inventory.itemId AND Borrowed.idNum = ? AND Borrowed.returnDate='NULL'";
	
	String RETURN_BORROWED = "UPDATE Inventory SET Inventory.status='available' "
			+"FROM Inventory, Borrowed " 
			+"WHERE Inventory.itemId = Borrowed.itemId AND Borrowed.itemId = ?;"
			+""
			+"UPDATE Borrowed SET returnDate = GETDATE() "
			+"FROM Borrowed, Inventory "
			+"WHERE Inventory.itemId = Borrowed.itemId AND Borrowed.itemId = ?;";

	String DELETE_ITEM = "UPDATE Inventory SET deleted=0 "
			+ "FROM Inventory "
			+ "WHERE itemId=?";
	
	String GET_DELETED_LIST = "SELECT itemId, itemName, category "
			+ "FROM Inventory "
			+ "WHERE deleted=0" ;
	
	String RESTORE_ITEM = "UPDATE Inventory SET deleted=1 "
			+ "FROM Inventory "
			+ "WHERE itemId=?";

	String SELECT_USERPW = "SELECT password "
			+ "FROM Users "
			+ "WHERE username=?";
	
	
	String SEARCH_DELETED = "SELECT * "
			+ "FROM Inventory "
			+ "WHERE itemId=? AND status='available' AND deleted=0";
	
	String SEARCH_KEYWORD_STATUS = "SELECT * "
			+ "FROM Inventory "
			+ "WHERE (itemId LIKE ? OR itemName LIKE ? OR category LIKE ? OR status LIKE ?) AND deleted=1; ";

	String SELECT_ALL_ACCOUNTS = "SELECT accountId, lastName, firstName FROM Accounts";
	
	String INSERT_ACCOUNT = "INSERT INTO Accounts(lastName, firstName, username, password) VALUES(?,?,?,?)";
	
	String SELECT_USERFN = "SELECT firstName FROM Accounts WHERE username=?";

	String SELECT_USERLN = "SELECT lastName FROM Accounts WHERE username=?";
	
	String DELETE_ACCOUNT = "DELETE FROM Accounts WHERE username=?";
}
