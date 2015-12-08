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

.container #borrowing-success {
	color: green;
} 
</style>
</head>
<body>
<%@include file="navbar.html" %>
<%if (request.getParameter("success").equals("true")) { %>
	<div class="container">
		<div class="row">
			<h1 id="borrowing-success">Borrowing Successful!</h1>
		
			<section id="item-details" class="col-xs-12 col-sm-7">
				<h2>Item Details</h2>
				
				<label for="item-id">Item ID</label>
				<p id="item-id">${borrowed.itemId}</p>
				
				<label for="item-name">Item Name</label>
				<p id="item-name">${borrowed.itemName}</p>
				
				<label for="borrowed-date">Borrowed Date</label>
				<p id="borrowed-date"><%= borrowed.getBorrowedDate() %></p>
				
				<label for="due-date"></label>
				<p id="due-date"><%= borrowed.getDueDate() %></p>
			</section>
			
			<section id="borrower-details" class="col-xs-12 col-sm-5">
				<h2>Borrower Details</h2>
				
				<label for="borrower-id">Borrower ID</label>
				<p id="borrower-id">${borrowed.idNum}</p>
				
				<label for="borrower-name">Borrower Name</label>
				<p id="borrower-name">${borrowed.lastName} ${borrowed.firstName}</p>
				
				<form role="form"action="inventoryprocess.html" method="post">
					<br>
					<div class="form-group">
					<p><b>Here is a list of all items borrowed by this borrower.</b></p> 
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
			</section>
	
		</div>
	</div>
	<% } else { %>
		<h1 id="error">Adding failed</h1>
	<% } %> 
	<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="./scripts/validator.min.js"></script>
</body>
</html>
