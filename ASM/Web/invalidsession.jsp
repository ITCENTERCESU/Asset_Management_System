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
<<<<<<< HEAD
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<link rel="icon" type="image/png" href="./images/information-systems-logo.png"/>
	<title>Asset Management System</title>
	<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:2em 1em;}
		body{background-color:#FD8F14}
	</style>
=======
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<link rel="stylesheet" href="./main.css"/>
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
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
</head>
<body>
<<<<<<< HEAD
	<!-- Header -->
	<div class="container">
		<header>
	<h2>Invalid credentials. Please try again.</h2>
	</header>
	<div class="row">
	<form action="index.jsp" class="col-sm-offset-5 col-sm-4">
		<input type="submit" value="GO BACK"class="btn btn-default">
	</form>
	</div>
=======
	<%@include file="navbar_simplified.html"%>
	<div class="row">
	<h2>
		<b>Invalid Session!</b>
	</h2>
	<p>Please Login</p>
		<form action="index.jsp" class="col-sm-offset-4 col-sm-4">
			<input type="submit" value="Login" class="btn btn-primary">
		</form>
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
	</div>
</body>
</html>
