<!-- #5 Successful Borrowing -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<link rel="icon" type="image/png" href="./images/information-systems-logo.png"/>
	<title>Asset Management System</title>
	<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:2em 1em;}
		
	</style>
</head>
<body>

	<%if (request.getParameter("success").equals("true")) { %>
		<div class="container">
		<header>
		<h2>Borrowing Successful!</h2>
		<br/>
		<p>ITEM DETAILS: </p>
		<p>Item ID: ${borrowed.itemId}</p>
		<p>Item Name: ${borrowed.itemName}</p>
		<p>Borrowed Date: $(borrowed.borrowedDate)</p>
		<p>Due Date: $(borrowed.dueDate)</p>
		<br>
		<p>BORROWER'S DETAILS
		<p>ID Number: ${borrowed.idNum}</p>
		<p>Last Name: ${borrowed.lastName}</p>
		<p>First Name: ${borrowed.firstName}</p>
<<<<<<< HEAD
		<p>Status: $(borrowed.status)</p>
		
		<form action="inventoryprocess.html" method="post">
=======
		<div class="row">
		<form role="form"action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
			<h2>Borrowing successful!</h2>
			<br>
			<p><b>Here is the list of all the things you had borrowed. 
			Please return them on time. </b></p>
			<br>
				<table border="1" style="width:100%">
				    <tr>
				    	<td align="center">Item ID</td>
							<td align="center">Item Name</td>
							<td align="center">Date Borrowed</td>
							<td align="center">Due Date</td>
				    </tr>
			    </table>
				<br> 
				<br>
				<input type="submit" value="Home"class="btn btn-default">
		</form>
	</div>
	<% } else { %>
		<h1>Adding failed</h1></header>	
	<% } %> 
	</div>
	
	<br/>
	
	<form role="form" action="inventoryprocess.html"class="col-sm-offset-1 col-sm-11">
		<input type="submit" value="HOME"class="btn btn-default">	
	</form>
	
	
	
	
	
</body>
</html>
