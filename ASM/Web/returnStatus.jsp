<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" import="java.util.*, java.text.*" %>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>
    
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
	font-weight: normal;
	font-size: 1.5em;
}

.row {
	padding: 2em;
	margin: 3em;
	border-radius: 25px;
	border: 2px solid;
	text-align: center;
}
</style>
</head>
<body>
<%@include file="navbar.html" %>
<div class="row">
	<%if (request.getParameter("success").equals("true")) { %>
		<form action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
			<h2>Item has been returned successfully!</h2>
			<br>
			<%
							Date borrowedDateDD = new Date();
							SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
							String borrowedDateD = ft.format(borrowedDateDD);
			%>
			<p>Date returned: <b><%out.println(borrowedDateD);%></b></p> 
			<br>
			<p><b>Thank You!</b></p>
	
			<br>
			<input type="submit" value="Home"class="btn btn-default">
	<% } else { %>
		<h1>Adding failed</h1>
	<% } %> 
	</form>
	</div>
</body>
</html>
