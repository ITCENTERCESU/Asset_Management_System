<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
</head>
<body>
	<%@include file="navbar_simplified.html"%>
	<!-- Header -->
	<div class="row">
		<header>
			<h3><b>The username and password is incorrect. Please try again</b></h3>
		</header>
			<form action="index.jsp" class="col-sm-offset-4 col-sm-4">
				<input type="submit" value="GO BACK" class="btn btn-primary">
			</form>
		</div>
	
</body>
</html>