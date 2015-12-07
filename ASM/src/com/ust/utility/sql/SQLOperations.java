package com.ust.utility.sql;

import java.sql.*;

import javax.sql.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.ust.model.AssetBean;
import com.ust.model.BorrowedBean;
import com.ust.utility.sql.SQLCommands;


public class SQLOperations implements SQLCommands {

	private static Connection connection;
	
	private SQLOperations() {
	}
	
	private static Connection getDBConnection() {
		try {
		    InitialContext context = new InitialContext();
		    DataSource dataSource = (DataSource) 
		     context.lookup("java:comp/env/jdbc/UST-3CSC-DS");
		    
		    if (dataSource != null) {
		    	connection = dataSource.getConnection();
		    }
		} catch (NamingException e) {
		    e.printStackTrace();
		} catch (SQLException e) {
		    e.printStackTrace();
		}
		return connection;
	 }
	
	public static Connection getConnection() {
		return (connection!=null)?connection:getDBConnection();
	}
	
	public static boolean addAsset(AssetBean asset, 
		Connection connection) {
		
		try {
	        PreparedStatement pstmt = connection.prepareStatement(INSERT_ASSET);
	        pstmt.setString(1, asset.getItemId()); 
	        pstmt.setString(2, asset.getItemName());
	        pstmt.setString(3, asset.getStatus());           
	        pstmt.executeUpdate(); // execute insert statement  
		} catch (SQLException sqle) {
			System.out.println("SQLException - addAsset: " + sqle.getMessage());
			return false; 
		}	
		return true;
	}
	
	public static ResultSet getAllAssets(Connection connection) {
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery(GET_ALL_ASSET);  
		} catch (SQLException sqle) {
			System.out.println("SQLException - getALLAssets: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	public static ResultSet getAvailableList(Connection connection) {
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery(GET_AVAILABLE_LIST);  
		} catch (SQLException sqle) {
			System.out.println("SQLException - getBorrowedList: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	public static AssetBean searchAsset(String itemId, 
			Connection connection) {
			
			AssetBean asset = new AssetBean();
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(SEARCH_ASSET);
		        pstmt.setString(1, itemId);             
		        ResultSet rs  = pstmt.executeQuery();
		        
		        while (rs.next()) { 
		        	asset.setItemId(rs.getString("itemId"));
		        	asset.setItemName(rs.getString("itemName"));
		        	asset.setStatus(rs.getString("status"));
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - searchAsset: " 
						+ sqle.getMessage());
				return asset; 
			}	
			return asset;
	}
	
	
	public static boolean addBorrowed(BorrowedBean borrowed, 
			Connection connection) {
			//itemId, itemName,idNum, lastName, firstName, borrowedDate,dueDate, status
			try {
		        PreparedStatement pstmt = connection.prepareStatement(INSERT_BORROWED);
		        pstmt.setString(1, borrowed.getItemId()); 
		        pstmt.setString(2, borrowed.getItemName());
		        pstmt.setInt(3, borrowed.getIdNum()); 
		        pstmt.setString(4, borrowed.getLastName()); 
		        pstmt.setString(5, borrowed.getFirstName()); 
		        pstmt.setString(6, borrowed.getBorrowedDate()); 
		        pstmt.setString(7, borrowed.getDueDate()); 
		        pstmt.setString(8, borrowed.getStatus()); 
		        
		        pstmt.executeUpdate(); // execute insert statement  
			} catch (SQLException sqle) {
				System.out.println("SQLException - addBorrowed: " + sqle.getMessage());
				return false; 
			}	
			return true;
	}
	
	
	public static boolean returnBorrowed(BorrowedBean returned, 
			Connection connection) {

			try {
		        PreparedStatement pstmt = connection.prepareStatement(RETURN_BORROWED);
		        pstmt.setString(1, returned.getItemId()); 
		        pstmt.setInt(2, returned.getIdNum());
		        pstmt.setString(3, returned.getItemId());
		        
		        pstmt.executeUpdate(); // execute insert statement  
			} catch (SQLException sqle) {
				System.out.println("SQLException - returnBorrowed: " + sqle.getMessage());
				return false; 
			}	
			return true;
	}
	
	
	
	public static String selectUserPassword(String username, Connection connection) {
		
		String pw="";
		
		try {
			PreparedStatement pstmt = connection.prepareStatement(SELECT_USERPW);
	        pstmt.setString(1, username);
	        ResultSet rs  = pstmt.executeQuery();
	        
	        if (rs.next() ) { 
	        	pw = rs.getString("password");
	        }
	        
	        return pw;
	        
		} catch (SQLException sqle) {
			System.out.println("SQLException - selectEarning: " + sqle.getMessage() );
			return pw; 
		}
		
	}
	
	public static ResultSet getCurrentlyBorrowing(int idNum, BorrowedBean currently, Connection connection) {
		ResultSet rs = null;
		try {

			PreparedStatement pstmt = connection.prepareStatement(GET_CURRENTLY_BORROWING);
			pstmt.setInt(1, idNum);
			rs = pstmt.executeQuery();  
			
		    
		} catch (SQLException sqle) {
			System.out.println("SQLException - getCurrentlyBorrowing: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	public static synchronized int deleteItem(String itemId, Connection connection) {
		int updated = 0;
		
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = connection.prepareStatement(DELETE_ITEM);
	        pstmt.setString(1, itemId);             
	        updated  = pstmt.executeUpdate();
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - deleteItem: " + sqle.getMessage());
			
			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Delete Connection Rollback - " + sql.getMessage());
			}
			return updated; 
		}	
		return updated;
	}

}


	
