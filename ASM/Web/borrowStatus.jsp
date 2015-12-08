<!-- #5 Successful Borrowing -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

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
	margin: 0;
}

section .form-group .form-control {
	border: none;
	box-shadow: none;
	font-weight: bold;
	font-size: 1em;
}

section .form-group .control-label {
	font-weight: normal;
}

#borrower-name {
	text-transform: capitalize;
	font-weight: bold;
}
	
</style>
</head>
<body>
<%@include file="navbar.html" %>
<%if (request.getParameter("success").equals("true")) { %>
	<div class="container">
		<div class="row">
			<h1 id="success">Borrowing Successful!</h1>
		
			<section id="item-details" class="form-horizontal col-xs-12 col-sm-5">
				<h2>Item Borrowed</h2>
				<div class="form-group">
					<label for="item-id" class="control-label col-sm-4">Item ID</label>
					<div class="col-sm-8">
						<p id="item-id" class="form-control">${borrowed.itemId}</p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="item-name" class="control-label col-sm-8">Item Name</label>
					<div class="col-sm-4">
						<p id="item-name" class="form-control">${borrowed.itemName}</p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="borrowed-date" class="control-label col-sm-8">Borrowed Date</label>
					<div class="col-sm-4">
						<p id="borrowed-date" class="form-control"><%= borrowed.getBorrowedDate() %></p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="due-date" class="control-label col-sm-8">Due Date</label>
					<div class="col-sm-4">
						<p id="due-date" class="form-control"><%= borrowed.getDueDate() %></p>
					</div>
				</div>
			</section>
			
			<section id="borrower-details" class="col-xs-12 col-sm-7">
				<h2>Borrower's History</h2>
				<form role="form"action="inventoryprocess.html" method="post">
					<div class="form-group">
					<p>
						Here is a list of other items currently borrowed by 
						<span id="borrower-name">${borrowed.firstName} ${borrowed.lastName}</span>
						<span id="borrower-id">&lt;${borrowed.idNum }&gt;</span>:
					</p> 
					<div class="table-responsive">
						<table class="table table-bordered table-striped" role="table">
						    <tr>
						    	<th>Item ID</th>
								<th>Item Name</th>
								<th>Date Borrowed</th>
								<th>Due Date</th>
						    </tr>
						    
						
							<% while(currently.next()) { %>
								<tr>
								
								<!-- will contain ERROR if data type of itemId is changed -->

								<%if(!currently.getString("itemId").equals(borrowed.getItemId())) { %>
									<td><%=currently.getString("itemId")%></td>
									<td><%=currently.getString("itemName")%></td>
									<td><%=currently.getString("borrowedDate")%></td>
									<td><%=currently.getString("dueDate")%></td>
								<%} %>
								</tr>			
							<% } %>
					    </table>
					</div>
					</div>
				</form>
			</section>
			<form action="inventoryprocess.html" method="post">
				<input type="submit" value="OK" class="btn btn-info">
			</form>
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
