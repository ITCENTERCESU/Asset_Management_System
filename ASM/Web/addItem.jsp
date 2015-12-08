<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

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
					<input id="item-id" maxlength="4" placeholder="ex. 0001" pattern="[0-9]{4}" type="text" name="itemId" required="required" class="form-control" autofocus="autofocus">
					<span class="help-block">Minimum of 4 digits</span>
				</div>
				
				<div class="form-group">
					<label for="item-name">Item Name</label>
					<input id="item-name" placeholder="ex. Database Management System" type="text" name="itemName" required="required" class="form-control">
				</div>				
			</fieldset>
			<input type="submit" value="Add new item"class="btn btn-primary">
			<input type="submit" value="Cancel" class="btn btn-default" formaction="inventoryprocess.html" formmethod="post" formnovalidate="formnovalidate">
		</form>
	</div>
	</div>
		
</body>
</html>
