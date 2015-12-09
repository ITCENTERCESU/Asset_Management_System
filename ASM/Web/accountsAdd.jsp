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
		<form role="form" action="accountsAddProcess.html" method="post" class="col-sm-offset-4 col-sm-4">
			<fieldset>
				<legend>Facilitator Account Registration</legend>
				
				<div class="form-group">
					<label for="first-name">First Name</label>
					<input id="first-name" type="text" name="firstName" required="required" class="form-control" autofocus>
				</div>	
				
				<div class="form-group">
					<label for="last-name">Last Name</label>
					<input id="last-name" type="text" name="lastName" required="required" class="form-control" autofocus>
				</div>
				
				<div class="form-group">
					<label for="user-name">Username</label>
					<input id="user-name" type="text" name="username" required="required" autofocus>
				</div>	
				
				<div class="form-group">
					<label for="pass-word">Password</label>
					<input id="pass-word" type="password" name="password" required="required" autofocus>
				</div>
				
				<div class="form-group">
					<label for="pass-word2">Repeat Password</label>
					<input id="pass-word2" type="password" name="password2" required="required" autofocus>
				</div>	
						
			</fieldset>
			<input type="submit" value="Register"class="btn btn-primary">
			<input type="submit" value="Cancel" class="btn btn-default" formaction="inventory.jsp" formmethod="post" formnovalidate="formnovalidate">
		</form>
	</div>
	</div>
		
</body>
</html>
