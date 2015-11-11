<!-- #4 Return Form -->
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
		form{padding:2em;background:#FD8F14;}
		form{padding:2em;background:#FFD4AA;}
		.h2 { font-size:100%; }
		.container-fluid{background-color: #FF9933;}
		body{background-color:#FDDFBD;}
	</style>
</head>
<!-- Insert header here -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <h2 class="navbar-brand" >Return Form: </h2>
    </div>
    
  </div>
</nav>
<body>
	
	<div class="container">
	
	<div class="row">
	<form role="form" action="processreturn.html" method="post" class="col-sm-offset-4 col-sm-4">
		<p><strong>ID Number:</strong><input type="text" name="idNum" size="10" required="required" placeholder="ex. 2015123456"class="form-control"></p>
		<p><strong>Item Code:</strong><input type="text" name="itemId" size="10" required="required" placeholder="ex. 0000"class="form-control"></p>
		
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
