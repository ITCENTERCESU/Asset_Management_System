package com.ust.utility.sql;

import java.sql.*;

import javax.sql.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.ust.model.AssetBean;
import com.ust.model.BorrowedBean;
import com.ust.model.BorrowersBean;
import com.ust.model.UserBean;
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
	         
	        pstmt.setString(1, asset.getItemName());
	        pstmt.setString(2, asset.getCategory());
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
	
	public static ResultSet getNotAvailableList(Connection connection) {
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery(GET_NOT_AVAILABLE_LIST);  
		} catch (SQLException sqle) {
			System.out.println("SQLException - getBorrowedList: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	public static AssetBean searchAsset(int itemId, 
			Connection connection) {
			
			AssetBean asset = new AssetBean();
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(SEARCH_ASSET);
		        pstmt.setInt(1, itemId);             
		        ResultSet rs  = pstmt.executeQuery();
		        
		        while (rs.next()) { 
		        	asset.setItemId(rs.getInt("itemId"));
		        	asset.setItemName(rs.getString("itemName"));
		        	asset.setCategory(rs.getString("category"));
		        	asset.setStatus(rs.getString("status"));
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - searchAsset: " 
						+ sqle.getMessage());
				return asset; 
			}	
			return asset;
	}
	
	public static BorrowedBean searchBorrowed(int itemId, 
			Connection connection) {
			
			BorrowedBean borrowed = new BorrowedBean();
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(SEARCH_BORROWED);
		        pstmt.setInt(1, itemId);             
		        ResultSet rs  = pstmt.executeQuery();
		        
		        while (rs.next()) { 
		        	borrowed.setNum(rs.getInt("num"));
		        	borrowed.setItemId(rs.getInt("itemId"));
		        	borrowed.setIdNum(rs.getInt("idNum"));
		        	borrowed.setBorrowedDate(rs.getString("borrowedDate"));
		        	
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - searchborrowed: " 
						+ sqle.getMessage());
				return borrowed; 
			}	
			return borrowed;
	}
	
	
	public static BorrowersBean searchBorrowers(int idNum, 
			Connection connection) {
			
			BorrowersBean borrowers = new BorrowersBean();
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(SEARCH_BORROWERS);
		        pstmt.setInt(1, idNum);             
		        ResultSet rs  = pstmt.executeQuery();
		        
		        while (rs.next()) { 
		        	borrowers.setIdNum(rs.getInt("idNum"));
		        	borrowers.setLastName(rs.getString("lastName"));
		        	borrowers.setFirstName(rs.getString("firstName"));
		        	borrowers.setContactNumber(rs.getString("contactNumber"));
		        	borrowers.setEmail(rs.getString("email"));
		        	
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - searchborrowers: " 
						+ sqle.getMessage());
				return borrowers; 
			}	
			return borrowers;
	}
	
	public static void searchUnavailable(AssetBean asset, BorrowedBean borrowed, BorrowersBean borrowers,
			Connection connection) {
			
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(SEARCH_BORROWER_DETAILS);
		        pstmt.setInt(1, asset.getItemId());  
		        pstmt.setInt(2, borrowed.getIdNum());
		        ResultSet rs  = pstmt.executeQuery();
		        
		        //Borrowed.itemId, Inventory.itemName
		        while (rs.next()) { 
		        	borrowed.setItemId(rs.getInt("itemId"));
		        	asset.setItemName(rs.getString("itemName"));
		        	borrowers.setIdNum(rs.getInt("idNum"));
		        	borrowers.setLastName(rs.getString("lastName"));
		        	borrowers.setFirstName(rs.getString("firstName"));
		        	borrowers.setContactNumber(rs.getString("contactNumber"));
		        	borrowers.setEmail(rs.getString("email"));
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - searchBorrower: " 
						+ sqle.getMessage());
			
			}	
			
	}
	
	public static AssetBean searchDeleted(int itemId, 
			Connection connection) {
			
			AssetBean asset = new AssetBean();
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(SEARCH_DELETED);
		        pstmt.setInt(1, itemId);             
		        ResultSet rs  = pstmt.executeQuery();
		        
		        while (rs.next()) { 
		        	asset.setItemId(rs.getInt("itemId"));
		        	asset.setItemName(rs.getString("itemName"));
		        	asset.setCategory(rs.getString("category"));
		        	asset.setStatus(rs.getString("status"));
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - searchAsset: " 
						+ sqle.getMessage());
				return asset; 
			}	
			return asset;
	}
	
	public static boolean addBorrowed(BorrowedBean borrowed, BorrowersBean borrowers,
			Connection connection) {
			
			try {
		        PreparedStatement pstmt = connection.prepareStatement(INSERT_BORROWED);
		       
		        pstmt.setInt(1, borrowed.getItemId()); 
		        pstmt.setInt(2, borrowers.getIdNum());
		        pstmt.setString(3, borrowed.getBorrowedDate());
		        pstmt.setInt(4, borrowed.getItemId());
		        
		      
		        
		        pstmt.executeUpdate(); // execute insert statement  
			} catch (SQLException sqle) {
				System.out.println("SQLException - addBorrowed: " + sqle.getMessage());
				return false; 
			}	
			return true;
	}
	
	
	public static boolean addBorrowers(BorrowersBean borrowers, Connection connection) {
		
			try {
		        PreparedStatement pstmt = connection.prepareStatement(INSERT_BORROWERS);
		        pstmt.setInt(1, borrowers.getIdNum()); 
		        pstmt.setString(2, borrowers.getLastName());
		        pstmt.setString(3, borrowers.getFirstName()); 
		        pstmt.setString(4, borrowers.getContactNumber());
		        pstmt.setString(5, borrowers.getEmail());
		        
		        pstmt.executeUpdate(); // execute insert statement  
			} catch (SQLException sqle) {
				System.out.println("SQLException - addBorrowed: " + sqle.getMessage());
				return false; 
			}	
			return true;
	}
	
	public static boolean returnBorrowed(BorrowedBean returned, int itemId,
			Connection connection) {

			try {
		        PreparedStatement pstmt = connection.prepareStatement(RETURN_BORROWED);
		        pstmt.setInt(1, itemId); 
		        
		        pstmt.setInt(2, itemId); 
		       
		        
		        
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
	
	public static ResultSet getCurrentlyBorrowing(int idNum,  Connection connection) {
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
	
	public static synchronized int deleteItem(int itemId, Connection connection) {
		int updated = 0;
		
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = connection.prepareStatement(DELETE_ITEM);
	        pstmt.setInt(1, itemId);             
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
	
	public static ResultSet getDeletedList(Connection connection) {
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery(GET_DELETED_LIST);  
		} catch (SQLException sqle) {
			System.out.println("SQLException - getBorrowedList: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}

	public static synchronized int restoreItem(int itemId, Connection connection) {
		int updated = 0;
		
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = connection.prepareStatement(RESTORE_ITEM);
	        pstmt.setInt(1, itemId);             
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
	
	public static ResultSet searchKeywordStatus(String searchWord, Connection connection) { 
		ResultSet rs = null;
		try {
			PreparedStatement pstmt =
					connection.prepareStatement(SEARCH_KEYWORD_STATUS);
			pstmt.setString(1, "%" + searchWord + "%");
			pstmt.setString(2, "%" + searchWord + "%");
			pstmt.setString(3, "%" + searchWord + "%");
			pstmt.setString(4, "%" + searchWord + "%");
			rs = pstmt.executeQuery();
		}
		catch(SQLException sqle) {
			System.out.println("SQLException - searchKeywordActStatus: " 
					+ sqle.getMessage());
			
			return rs;
		}
		return rs;
	}
	
	public static ResultSet selectAllAccounts(Connection connection) {
		
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery(SELECT_ALL_ACCOUNTS);  
		} catch (SQLException sqle) {
			System.out.println("SQLException - selectAllAccounts: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
		
	}
	
	public static boolean addAccount(UserBean user, Connection connection) {
		try {
			PreparedStatement pstmt = connection.prepareStatement(INSERT_ACCOUNT);
	        pstmt.setString(1, user.getLastName()); 
	        pstmt.setString(2, user.getFirstName());
	        pstmt.setString(3, user.getUsername());
	        pstmt.setString(4, user.getPassword());    
	        pstmt.executeUpdate(); 
			} catch (SQLException sqle) {
				System.out.println("SQLException - addAccount: " + sqle.getMessage());
				return false; 
			}	
			return true;
		}
	
	public static String selectUserFirstName(String username, Connection connection) {
		
		String fn="";
		
		try {
			PreparedStatement pstmt = connection.prepareStatement(SELECT_USERFN);
	        pstmt.setString(1, username);
	        ResultSet rs  = pstmt.executeQuery();
	        
	        if (rs.next() ) { 
	        	fn = rs.getString("firstName");
	        }
	        
	        return fn;
	        
		} catch (SQLException sqle) {
			System.out.println("SQLException - selectUserFN: " + sqle.getMessage() );
			return fn; 
		}
		
	}
	
	public static String selectUserLastName(String username, Connection connection) {
		
		String ln="";
		
		try {
			PreparedStatement pstmt = connection.prepareStatement(SELECT_USERLN);
	        pstmt.setString(1, username);
	        ResultSet rs  = pstmt.executeQuery();
	        
	        if (rs.next() ) { 
	        	ln = rs.getString("lastName");
	        }
	        
	        return ln;
	        
		} catch (SQLException sqle) {
			System.out.println("SQLException - selectUserLN: " + sqle.getMessage() );
			return ln; 
		}
		
	}
	
	public static synchronized int deleteAccount(String username, Connection connection) {
		int updated = 0;
		
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = connection.prepareStatement(DELETE_ACCOUNT);
	        pstmt.setString(1, username);             
	        updated  = pstmt.executeUpdate();
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - deleteEmployee: " + sqle.getMessage());
			
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


	
