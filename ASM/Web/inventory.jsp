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
		header{text-align:center;margin:2em 10em;}
		.lalagyan{margin:-520px 590px -150px;background:#FFD4AA;width:30%;height:273px; box-shadow:.5em .5em .1em;border-radius: 25px;position:absolute}
		.lalagyan2{margin:220px 40px -260px;width:40%;height:80px; position:absolute;}
		.table{height:100%;width:513px;margin-right:auto;}
		body{background-color:#FDDFBD;}
		.a { font-size: 250%; }
		.container-fluid{background-color: #FF9933;}
	</style>
</head>
<body>
<%-- guys ano toh?-eto ba ung s password?ksi kapag nag login ako may admin na word talaga
<%        String name=(String)session.getAttribute("name"); %>
<<<<<<< HEAD
<%= name %>--%>

	<!-- Insert header here -->
	
		<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Inventory</a>
    </div>
    
  </div>
</nav>
	<!-- Display Inventory table  -->
	<div class="table">
	<table border="2" width="100%" style="margin:0em 2em;">
	
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
	</div>

<div class="container">

	<div class="row">
	<div class="lalagyan">
	<!-- Add New Item button may something sa button -->
	<form action="addItem.jsp" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Add New Item" class="btn btn-default" style="position:absolute; top: 20px;right:-20px;">
	</form>
	<br> 
	
	<!-- Borrow Item Button -->
	<form action="listborrowprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Borrow Item" class="btn btn-default"style="position:absolute; top: 50px;right:-15px;">
	</form>
	<br>
	
	<!-- Return Item button -->
	<form action="returnForm.jsp" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Return Item"class="btn btn-default"style="position:absolute; top: 80px;right:-13px;">
	</form>
	<br>
	
	<!-- Delete Item button -->
	<form action="deleteprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Delete Item"class="btn btn-default"style="position:absolute; top:110px;right:-13px;">
	</form>
	<br> 
	</div>
	<div class="lalagyan2" class="list-inline">
	
	<!-- Settings button -->
	<form action="addaccount.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="New Account"class="btn btn-default"style="position:absolute; top: 20px; right:70px;">
	</form>
	<br> 
	

	<!-- Logout button -->



	<form action="processlogout.html" method="post"class="col-sm-offset-4 col-sm-4">

	<input type="submit" value="Logout"class="btn btn-default"style="position:absolute; top: -1px; right:-50px;">

	</form>


	<br>
	</div>
	</div>
	</div>
	
	

	
</body>
</html>
