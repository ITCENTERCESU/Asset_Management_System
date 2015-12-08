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
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
		
p {
	font-weight : normal;
	font-size: 1.5em;
}
label {
	font-weight: bold;
	font-size: 1.5em;
}
row  {
	margin-right:2em;
}


row .form-group {
	display: inline;
}	
	</style>
</head>
<body>
<%@include file="navbar.html" %>
	<%if (request.getParameter("success").equals("true")) { %>
		<div class="container">
		<header>
		<h2>Borrowing Successful!</h2>
		<br/>
		<label>ITEM DETAILS: </label>
		<p>Item ID: ${borrowed.itemId}</p>
		<p>Item Name: ${borrowed.itemName}</p>
		<p>Borrowed Date: <%= borrowed.getBorrowedDate() %></p>
		<p>Due Date: <%= borrowed.getDueDate() %></p>
		<br>
		<label>BORROWER'S DETAILS</label>
		<p>ID Number: ${borrowed.idNum}</p>
		<p>Last Name: ${borrowed.lastName}</p>
		<p>First Name: ${borrowed.firstName}</p>

		
	

		<div class="row">
		<form role="form"action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
			<br>
			<div class="form-group">
			<p><b>Here is the list of all the things you are currently borrowing.</b></p> 
			<p><b>Please return them on time. </b></p>
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
				</div>
		</form>
	</div>
	<% } else { %>
		<h1>Adding failed</h1></header>	
	<% } %> 
	</div>	
	<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="./scripts/validator.min.js"></script>
</body>
</html>
