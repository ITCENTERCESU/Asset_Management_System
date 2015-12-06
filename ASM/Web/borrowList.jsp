<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
    
<jsp:useBean id="borrowed" type="java.sql.ResultSet" scope="request"/>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
#borrow-button {
	height: 3em;
	width: 3em;
}
		/* img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:2em 1em; background:#FD8F14;}
		.a { font-size:100%; }
		.container-fluid{background-color: #FF9933;}
		.table{height:100%;width:513px;margin:auto;}
		body{background-color:#FDDFBD;
		} */
</style>
</head>
<body>
	<%@include file="navbar.html" %>  

	<div class="container">
		<div class="table-responsive">	
			<table class="table table-striped table-bordered" role="table">
				<caption>List of available items for borrowing.</caption>
				<tr>
					<th>Item ID</th>
					<th>Item Name</th>
					<th>Status</th>
					<th>Action-Borrow</th>
				</tr>
				
				<tr>
				<% while(borrowed.next()) {	%>
					<td><%=borrowed.getString("itemId")%></td>
					<td><%=borrowed.getString("itemName")%></td>
					<td>
					  <a href="assetmaintenance.html?itemId=<%=borrowed.getString("itemId")%>&action=borrow">
					  	<img id="borrow-button" src="images/borrow.png"/>
					  </a>
					</td>
				</tr>			
				<% } %>
			</table>
		</div>
	</div>
</body>
</html>
