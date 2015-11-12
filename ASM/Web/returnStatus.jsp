<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<title>Asset Management System</title>
	<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:3em 1em;}
		
		form{padding:2em;background:#FFD4AA;margin:3em;border-radius: 25px;border: 2px solid  #FF9933;}
		body{background-color:#FDDFBD;}
		
	</style>
</head>
<body>
	<form action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<h2>Item has been returned successfully!</h2>
		<br>
		<p>Date returned: _________</p> <!-- returnDate //variable to be used -->
		<br>
		<p><b>Thank You!</b></p>

		<br>
		<input type="submit" value="Home"class="btn btn-default">
	</form>
</body>
</html>