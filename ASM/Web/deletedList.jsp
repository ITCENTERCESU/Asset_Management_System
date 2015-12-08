<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

<jsp:useBean id="deleted" type="java.sql.ResultSet" scope="request"/>
    
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
				<caption>To restore: click the "Restore" button .</caption>
			
				<tr>
					<th>Item ID</th>
					<th>Item Name</th>
					<th>Category </th>
					<th class="action-borrow-col">Action-Restore</th>
				</tr>
				
				<% while(deleted.next()) {	%>
				<tr>
					<td><%=deleted.getInt("itemId")%></td>
					<td><%=deleted.getString("itemName")%></td>
					<td><%=deleted.getString("category") %></td>
					<td class="action-borrow-col">
					  <a href="restorespecificitem.html?itemId=<%=deleted.getString("itemId")%>&action=restore">
					  	<img id="borrow-img" src="images/delete-black.png"/>
					  </a>
					</td>
				</tr>			
				<% } %>
			</table>

		</div>
	</div>
</body>
</html>
