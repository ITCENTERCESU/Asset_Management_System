<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

<jsp:useBean id="user" class="com.ust.model.UserBean" scope="request" />

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
			<fieldset>
				<legend>Facilitator Account Delete Profile</legend>
			<!--
			<form role="form" action="accountsEditProcess.html" method="post" class="col-sm-offset-4 col-sm-4">
			<fieldset>
				<legend>Edit Password</legend>
				
				<div class="form-group">
					<label for="old-pw">Old Password</label>
					<input id="old-pw" type="password" name="oldPassword" required="required" autofocus>
				</div>
				
				<div class="form-group">
					<label for="new-pw">New Password</label>
					<input id="new-pw" type="password" name="newPassword" required="required" autofocus>
				</div>
				
				<div class="form-group">
					<label for="repeat-pw">Repeat New Password</label>
					<input id="repeat-pw" type="password" name="repeatPassword" required="required" autofocus>
				</div>
			</fieldset>
			
			<input type="submit" value="Save" class="btn btn-primary">
			<input type="submit" value="Cancel" class="btn btn-default" formaction="inventory.jsp" formmethod="post" formnovalidate="formnovalidate">
		</form>-->
		<form action="accountsDeleteProcess.jsp" method="post">
			<input type="submit" value="Delete" class="btn btn-default" formnovalidate="formnovalidate">
		</form>
		</fieldset>
		
	</div>
	</div>
		
</body>
</html>
