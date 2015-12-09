<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

<jsp:useBean id="accountsList" type="java.sql.ResultSet" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
table #borrow-img {
	height: 3em;
	width: 3em;
}
table .action-borrow-col {
	width: 10em;
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="navbar.html" %>
	  
	
	<div class="container">
		<div class="table-responsive">	
			<table class="table table-striped table-bordered" role="table">
				<caption>List of All Users</caption>
				<tr>
					<th>Account ID</th>
					<th>Last Name</th>
					<th>First Name</th>
				</tr>
				
				<% while(accountsList.next()) {	%>
				<tr>
					<td><%=String.format("%03d", accountsList.getInt("accountId"))%></td>
					<td><%=accountsList.getString("lastName")%></td>
					<td><%=accountsList.getString("firstName")%></td>
				</tr>			
				<% } %>
			</table>

		</div>
	</div>
</body>
</html>
