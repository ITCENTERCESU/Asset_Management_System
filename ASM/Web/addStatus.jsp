<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>

<title>Asset Management System</title>
<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:1em 1em;}
		
	</style>
</head>
<body>
	<%if (request.getParameter("success").equals("true")) { %>
	<div class="container">
	<header>
	 
		<h2>The item has been added successfully</h2>
		
		<br/>
		<p>Item ID: ${asset.itemId}</p>
		<p>Item Name: ${asset.itemName}</p>
		<p>Status: ${asset.status}</p>
	
	<% } else { %>
		<h1 style="text-align:center">Adding failed</h1>
		</header>		
	<% } %> 
	
	<br/>
	<div class="row">
	
	<form role="form" action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
	<input type="submit" value="HOME" class="btn btn-default">
	</form>
</div>
</div>
</body>
</html>