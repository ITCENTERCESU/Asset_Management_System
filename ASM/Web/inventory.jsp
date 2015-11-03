<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="inventory" type="java.sql.ResultSet" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="icon" type="image/png" href="./images/information-systems-logo.png"/>
<title>Asset Management System</title>
<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:3em 1em;}
		form{padding:3em;background:#fddfbd;}
	</style>
</head>
<body>
	<!-- Insert header here -->

	<!-- Display Inventory table  -->
	<table>
		<tr>
			<th align="center">Item ID</th>
			<th align="center">Item Name</th>
			<th align="center">Status</th>
		</tr>
		
		<% while(inventory.next()) {	%>
				<tr>
					<td><%=inventory.getString("itemId")%></td>
					<td><%=inventory.getString("itemName")%></td>
					<td><%=inventory.getString("status")%></td>
				</tr>			
		<% } %>
	</table>
	<br>
	<br>

	<!-- Add New Item button -->
	<form action="addItem.jsp" method="post">
		<input type="submit" value="Add New Item" class="btn btn-default">
	</form>
	<br> 
	
	<!-- Borrow Item Button -->
	<form action="listborrowprocess.html" method="post">
		<input type="submit" value="Borrow Item" class="btn btn-default">
	</form>
	<br>
	
	<!-- Return Item button -->
	<form action="returnForm.jsp" method="post">
		<input type="submit" value="Return Item"class="btn btn-default">
	</form>
	<br>
	
	<!-- Delete Item button -->
	<form action="deleteprocess.html" method="post">
		<input type="submit" value="Delete Item"class="btn btn-default">
	</form>
	<br> 
	
	<!-- Settings button -->
	<form action="addaccount.html" method="post">
		<input type="submit" value="New Account"class="btn btn-default">
	</form>
	<br> 
	
	<!-- Logout button -->
	<form action="index.jsp" method="post">
		<input type="submit" value="Logout"class="btn btn-default">
	</form>
	<br> 
</body>
</html>