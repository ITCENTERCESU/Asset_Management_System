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
	<div class="container">
	<header>
	<h2>Add New Item</h2>
	</header>
	
      <div class="row">
	<form role="form" action="addprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<p>Item ID <input type="text" name="itemId" size="25" required="required"placeholder="Id of Item"></p>
		<p>Item Name: <input type="text" name="itemName" size="25" required="required"placeholder="Name of Item"></p>
		<!--  <input type="hidden" name="action" value="insert">  -->
		<input type="submit" value="Add"class="btn btn-default">
	</form>
	
	
	<form role="form" action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Cancel"class="btn btn-default">
	</form>
	</div>
	</div>
		
</body>
</html>