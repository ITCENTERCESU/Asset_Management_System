<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*" %>
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
		header{text-align:center;margin:2em 10em; background:#FD8F14;}
		.lalagyan{margin:-270px 550px -200px;background:#FD8F14;width:40%;height:223px }
		.lalagyan2{margin:220px 40px -270px;background:#FD8F14;width:40%;height:80px}
		
		body{background-color:#FDDFBD;}
	</style>
</head>
<body>
<%        String name=(String)session.getAttribute("name"); %>
<%= name %>
	<!-- Insert header here -->
	<header><h2>Inventory</h2></header>
	<!-- Display Inventory table  -->
	
	<table border="1" width="50%" style="margin:0em 2em;">
	
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
	
<div class="container">
	<div class="row">
	<div class="lalagyan">
	<!-- Add New Item button may something sa button -->
	<form action="addItem.jsp" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Add New Item" class="btn btn-default" style="position:relative; top: 10px;">
	</form>
	<br> 
	
	<!-- Borrow Item Button -->
	<form action="listborrowprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Borrow Item" class="btn btn-default"style="position:relative; top: 20px;">
	</form>
	<br>
	
	<!-- Return Item button -->
	<form action="returnForm.jsp" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Return Item"class="btn btn-default"style="position:relative; top: 30px;">
	</form>
	<br>
	
	<!-- Delete Item button -->
	<form action="deleteprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Delete Item"class="btn btn-default"style="position:relative; top: 40px;">
	</form>
	<br> 
	</div>
	<div class="lalagyan2">
	<!-- Settings button -->
	<form action="addaccount.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="New Account"class="btn btn-default"style="position:relative; top: 20px; right:70px;">
	</form>
	<br> 
	
	<!-- Logout button -->


	<form action="processlogout.html" method="post"class="col-sm-offset-4 col-sm-4"style="margin:-30px 450px;">
	
		
		<input type="submit" value="Logout"class="btn btn-default"style="position:relative; top: -23px; right: -80px;">
</form>
	<br>
	</div>
	</div>
	</div>
	
	

	
</body>
</html>
