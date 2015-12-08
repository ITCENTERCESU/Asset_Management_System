<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

=======
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./main.css" />
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
.row {
	padding: 2em;
	margin: 3em;
	border-radius: 25px;
	border: 2px solid;
	text-align: center;
}

p {
	font-weight: normal;
	font-size: 1.5em;
}
</style>
</head>
<body>
	<%@include file="navbar.html"%>
	<%
		if (request.getParameter("success").equals("true")) {
	%>
	<div class="container">
		<div class="row">
			<header>

				<h2>The item has been added successfully</h2>

				<br />
				<p>Item ID: ${asset.itemId}</p>
				<p>Item Name: ${asset.itemName}</p>
				<p>Status: ${asset.status}</p>
			</header>
		

		<%
			} else {
		%>
		<div class="row">
			<header>
				<h1 style="text-align: center">Adding failed</h1>
			</header>
			<%
				}
			%>

			<br />


			<form role="form" action="inventoryprocess.html" method="post"
				class="col-sm-offset-4 col-sm-4">
				<input type="submit" value="HOME" class="btn btn-default">
			</form>
			</div>
		</div>
	</div>
</body>
</html>
