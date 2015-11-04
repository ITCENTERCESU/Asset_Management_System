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
		header{text-align:center;margin:2em 10em;}
		.lalagyan{margin:-60px 230px;}
		.lalagyan2{margin:10px 70px 0px 30px;}
	</style>
</head>
<body>
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
	<form action="addItem.jsp" method="post"class="col-sm-offset-4 col-sm-4"style="margin:-180px 450px;">
		<input type="submit" value="Add New Item" class="btn btn-default">
	</form>
	<br> 
	
	<!-- Borrow Item Button -->
	<form action="listborrowprocess.html" method="post"class="col-sm-offset-4 col-sm-4"style="margin:-150px 450px;">
		<input type="submit" value="Borrow Item" class="btn btn-default">
	</form>
	<br>
	
	<!-- Return Item button -->
	<form action="returnForm.jsp" method="post"class="col-sm-offset-4 col-sm-4"style="margin:-120px 450px;">
		<input type="submit" value="Return Item"class="btn btn-default">
	</form>
	<br>
	
	<!-- Delete Item button -->
	<form action="deleteprocess.html" method="post"class="col-sm-offset-2 col-sm-4"style="margin:-90px 450px;">
		<input type="submit" value="Delete Item"class="btn btn-default">
	</form>
	<br> 
	</div>
	<div class="lalagyan2">
	<!-- Settings button -->
	<form action="addaccount.html" method="post"class="col-sm-offset-2 col-sm-4"style="margin:-20px 130px;">
		<input type="submit" value="New Account"class="btn btn-default">
	</form>
	<br> 
	
	<!-- Logout button -->
<<<<<<< HEAD
	<form action="index.jsp" method="post"class="col-sm-offset-2 col-sm-4"style="margin:-20px 150px;" style="inline">
=======
	<form action="index.jsp" method="post"class="col-sm-offset-4 col-sm-4"style="margin:-30px 450px;">
	<%
		session=request.getSession();
		session.invalidate();
	%>
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
		<input type="submit" value="Logout"class="btn btn-default">
	</form>
	<br>
	</div>
	</div>
	</div>
	
	

	
</body>
</html>