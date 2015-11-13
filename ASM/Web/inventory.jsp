<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.io.*,java.util.*"%>
<jsp:useBean id="inventory" type="java.sql.ResultSet" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./fonts/quicksand/stylesheet.css" />
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/information-systems-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
body {
	padding-top: 5em;
}
nav {
	background-color: #FD8F14;
}
nav .navbar-brand{
	color: white;}
nav form .btn {
	background-color: inherit;
	border: .1em solid white;
}
table {
	
}
</style>
</head>
<body>
	<!--  navigation bar -->
	<nav class="navbar navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="inventory.jsp" class="navbar-brand">Asset Management System</a>
			</div>
			<form class="navbar-form navbar-right">
				<input type="submit" value="Create New Account" formaction="addaccount.html" formmethod="post" class="btn btn-info">
				<input type="submit" value="Logout" formaction="processlogout.html" formmethod="post" class="btn btn-info">
			</form>
		</div>
	</nav>
	
	<div class="container">
		<div class="row">
			<!-- inventory table  -->
			<div class="table-responsive col-xs-push-12"> 
				<table class="table table-striped table-bordered" role="table">
					<caption>Inventory</caption>
					<tr>
						<th>Item ID</th>
						<th>Item Name</th>
						<th>Status</th>
					</tr>
		
					<%
						while (inventory.next()) {
					%>
					<tr>
						<td><%=inventory.getString("itemId")%></td>
						<td><%=inventory.getString("itemName")%></td>
						<td id=
							<%=(inventory.getString("status").equals("available")) ? "success" : "danger"%>>
							<%=inventory.getString("status")%>
						</td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<!-- buttons -->
			<div class="container">
					<!-- Add New Item Button -->
					<input formaction="addItem.jsp" formmethod="post" type="submit" value="Add New Item" class="btn btn-default">
					
					<!-- Borrow Item Button -->
					<input formaction="listborrowprocess.html" formmethod="post" type="submit" value="Borrow Item" class="btn btn-default">
					
					<!-- Return Item button -->
					<input formaction="returnForm.jsp" formmethod="post" type="submit" value="Return Item" class="btn btn-default">
					
					<!-- Delete Item button -->
					<input formaction="deleteprocess.html" formmethod="post" type="submit" value="Delete Item" class="btn btn-default">
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
</body>
</html>
