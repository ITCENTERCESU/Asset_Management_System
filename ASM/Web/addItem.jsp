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
      <h2 class="navbar-brand" >Add New Item</h2>
    </div>
    
  </div>
</nav>
<body>
	<div class="container">
	
	
      <div class="row">
	<form role="form" action="addprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<p><strong>Item ID: </strong>  <input type="text" name="itemId" size="25" required="required"placeholder="Id of Item"class="form-control"></p>
		<p><strong>Item Name: </strong><input type="text" name="itemName" size="25" required="required"placeholder="Name of Item"class="form-control"></p>
		<!--  <input type="hidden" name="action" value="insert">  -->
		<input type="submit" value="Add"class="btn btn-default">
		<!--  style="position:relative; top:30px; right:-115px;"-->
	</form>
	
	
	<form role="form" action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Cancel"class="btn btn-default">
		<!-- style="position:relative; top:-10px; right:-105px;" -->
	</form>
	</div>
	</div>
		
</body>
</html>