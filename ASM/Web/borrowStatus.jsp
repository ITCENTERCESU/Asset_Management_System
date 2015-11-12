<!-- #5 Successful Borrowing -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
    <jsp:useBean id="borrowed" type="com.ust.model.BorrowedBean" scope="request" /> 
    
    <jsp:useBean id="currently" type="java.sql.ResultSet" scope="request"/>
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
		form{padding:3em;background:#FD8F14;}
		.row{padding:2em;background:#FFD4AA;margin:3em;border-radius: 25px;border: 2px solid  #FF9933;}
		body{background-color:#FDDFBD;}
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
		<p>Borrowed Date: <%= borrowed.getBorrowedDate() %></p>
		<p>Due Date: <%= borrowed.getDueDate() %></p>
		<br>
		<p>BORROWER'S DETAILS
		<p>ID Number: ${borrowed.idNum}</p>
		<p>Last Name: ${borrowed.lastName}</p>
		<p>First Name: ${borrowed.firstName}</p>

		
	

		<div class="row">
		<form role="form"action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
			<br>
			<p><b>Here is the list of all the things you are currently borrowing. 
			Please return them on time. </b></p>
			<br>
				<table border="1" style="width:100%">
				    <tr>
				    	<td align="center">Item ID</td>
						<td align="center">Item Name</td>
						<td align="center">Date Borrowed</td>
						<td align="center">Due Date</td>
				    </tr>
				    
				
					<% while(currently.next()) { %>
						<tr>
							<td><%=currently.getString("itemId")%></td>
							<td><%=currently.getString("itemName")%></td>
							<td><%=currently.getString("borrowedDate")%></td>
							<td><%=currently.getString("dueDate")%></td>
						</tr>			
					<% } %>
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
