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
section .form-group {
	font-size: 1.5em;
	margin: .5em 0;
}

section .form-group .form-control {
	border: none;
	box-shadow: none;
}
	
</style>
</head>
<body>
<%@include file="navbar.html" %>
<%if (request.getParameter("success").equals("true")) { %>
	<div class="container">
		<div class="row">
			<h1 id="success">Borrowing Successful!</h1>
		
			<section id="item-details" class="form-horizontal col-xs-12 col-sm-6">
				<h2>Item Details</h2>
				<div class="form-group">
					<label for="item-id" class="control-label col-sm-4">Item ID</label>
					<div class="col-sm-8">
						<p id="item-id" class="form-control">${borrowed.itemId}</p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="item-name" class="control-label col-sm-4">Item Name</label>
					<div class="col-sm-8">
						<p id="item-name" class="form-control">${borrowed.itemName}</p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="borrowed-date" class="control-label col-sm-4">Borrowed Date</label>
					<div class="col-sm-8">
						<p id="borrowed-date" class="form-control"><%= borrowed.getBorrowedDate() %></p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="due-date" class="control-label col-sm-4">Due Date</label>
					<div class="col-sm-8">
						<p id="due-date" class="form-control"><%= borrowed.getDueDate() %></p>
					</div>
				</div>
			</section>
			
			<section id="borrower-details" class="form-horizontal col-xs-12 col-sm-6">
				<h2>Borrower Details</h2>
				
				<div class="form-group">
					<label for="borrower-id" class="control-label col-sm-4">Borrower ID</label>
					<div class="col-sm-8">
						<p id="borrower-id" class="form-control">${borrowed.idNum}</p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="borrower-name" class="control-label col-sm-4">Borrower Name</label>
					<div class="col-sm-8">
						<p id="borrower-name" class="form-control">
							<%= String.format("%s, %s", borrowed.getLastName().toUpperCase(), borrowed.getFirstName()) %>
						</p>
					</div>
				</div>
				
				
				<form role="form"action="inventoryprocess.html" method="post">
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
