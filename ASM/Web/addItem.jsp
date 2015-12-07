<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
</head>
<%@include file="navbar.html" %>
<body>
	<div class="container">
      <div class="row">
		<form role="form" action="addprocess.html" method="post" class="col-sm-offset-4 col-sm-4">
			<fieldset>
				<legend>About new item</legend>
				
				<div class="form-group">
					<label for="item-id">Item ID</label>
					<input id="item-id" type="text" name="itemId" required="required" class="form-control" autofocus="autofocus">
				</div>
				
				<div class="form-group">
					<label for="item-name">Item Name</label>
					<input id="item-name" type="text" name="itemName" required="required" class="form-control">
				</div>				
			</fieldset>
			<input type="submit" value="Add new item"class="btn btn-primary">
			<input type="submit" value="Cancel" class="btn btn-default" formaction="inventoryprocess.html" formmethod="post" formnovalidate="formnovalidate">
		</form>
	</div>
	</div>
		
</body>
</html>