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
		header{text-align:center;margin:1em 1em;}
		.row{padding:2em;background:#FFD4AA;margin:3em;border-radius: 25px;border: 2px solid  #FF9933;}
		form{padding:3em;}
		body{background-color:#FDDFBD;}
	</style>
</head>
<body>
	<%if (request.getParameter("success").equals("true")) { %>
	<div class="container">
	 <div class="row">
	<header>
	
		<h2>The item has been added successfully</h2>
		
		<br/>
		<p>Item ID: ${asset.itemId}</p>
		<p>Item Name: ${asset.itemName}</p>
		<p>Status: ${asset.status}</p>
	</header>
	</div>
	
	<% } else { %>
	<div class="row">
	<header>
		<h1 style="text-align:center">Adding failed</h1>
		</header></div>	
	<% } %> 
	
	<br/>
	
	
	<form role="form" action="inventoryprocess.html" method="post"class="col-sm-offset-5 col-sm-9"style="top: -93px;">
	<input type="submit" value="HOME" class="btn btn-default">
	</form>

</div>
</body>
</html>
