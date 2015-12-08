<!-- #5 Successful Borrowing -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

    <jsp:useBean id="borrowed" type="com.ust.model.BorrowedBean" scope="request" /> 
    <jsp:useBean id="borrowers" type="com.ust.model.BorrowersBean" scope="request" />  
     <jsp:useBean id="asset" type="com.ust.model.AssetBean" scope="request" /> 
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
					<label for="item-name" class="control-label col-sm-4">Item Name</label>
					<div class="col-sm-8">
						<p id="item-name" class="form-control">${borrowed.itemName}</p>
					</div>
				</div>
				
<<<<<<< HEAD
				<label for="item-name">Item Name</label>
				<p id="item-name">${asset.itemName}</p>
				
				<label for="category">Category</label>
				<p id="item-name">${asset.category}</p>

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
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
			</section>
			
<<<<<<< HEAD
			<section id="borrower-details" class="col-xs-12 col-sm-5">
				<h2>Borrower Details</h2>
				
				<label for="borrower-id">Borrower ID</label>
				<p id="borrower-id">${borrowers.idNum}</p>
				
				<label for="borrower-name">Borrower Name</label>
				<p id="borrower-name">${borrowers.lastName} ${borrowers.firstName}</p>
				
				<form role="form"action="inventoryprocess.html" method="post">
					<br>
					<div class="form-group">
					<p><b>Here is a list of all items borrowed by this borrower.</b></p> 
					<p><b>Please return them on time. </b></p>
					<br>
						<table border="1" style="width:100%">
=======
			<section id="borrower-details" class="col-xs-12 col-sm-7">
				<h2>Borrower's History</h2>
				<% if(!currently.wasNull()) { %>
					<p>
						Here is a list of other items currently borrowed by 
						<span id="borrower-name">${borrowed.firstName} ${borrowed.lastName}</span>
						<span id="borrower-id">&lt;${borrowed.idNum }&gt;</span>:
					</p> 
					<div class="table-responsive">
						<table class="table table-bordered table-striped" role="table">
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
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
				<%} else { %>
					<p>
						The borrower 
						<span id="borrower-name">${borrowed.firstName} ${borrowed.lastName}</span>
						<span id="borrower-id">&lt;${borrowed.idNum }&gt;</span>
						has not borrowed other items.
					</p> 
				<% } %>
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
