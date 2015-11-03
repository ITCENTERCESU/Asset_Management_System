package com.ust.utility.sql;

import java.sql.*;

import javax.sql.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.ust.model.AssetBean;
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
	
	public static ResultSet getBorrowedList(Connection connection) {
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery(GET_BORROWED_LIST);  
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
				System.out.println("SQLException - searchEmployee: " 
						+ sqle.getMessage());
				return asset; 
			}	
			return asset;
		}
	
}
