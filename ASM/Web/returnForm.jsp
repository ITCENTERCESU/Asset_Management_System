<!-- #4 Return Form -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<link rel="icon" type="image/png" href="./images/information-systems-logo.png"/>
	<title>Asset Management System</title>
	<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:3em 1em;}
		form{padding:3em;background:#fddfbd;}
	</style>
</head>
<body>
	<!-- Insert header here -->
	<div class="container">
		<header>
	<h2>Return Form: </h2>
	<br>
	<br>
	</header>
	<div class="row">
	<form role="form" action="processreturn.html" method="post" class="col-sm-offset-4 col-sm-4">
		<p>ID Number: <input type="text" name="idNum" size="10" required="required" placeholder="ex. 2015123456"></p>
		<p>Item Code: <input type="text" name="itemId" size="10" required="required" placeholder="ex. 0000"></p>
		
		<br>
		<input type="submit" value="Next" class="btn btn-default">
	</form>
	
	<form action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Cancel"class="btn btn-default">
	</form>
	</div>
	</div>
</body>
</html>