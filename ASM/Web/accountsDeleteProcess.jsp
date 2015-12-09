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
		<form action='accountsDeleteProcess.html' method='post'>
			<fieldset>
				<legend>Delete Account</legend>
				
				<div class="form-group">
					<label for="pass-word">Input Password</label>
					<input id="pass-word" type="password" name="password" required="required" autofocus>
				</div>
				
				<div class="form-group">
					<label for="repeat-pw">Repeat Password</label>
					<input id="repeat-pw" type="password" name="repeatPassword" required="required" autofocus>
				</div>
			</fieldset>
			
			<input type="submit" value="!Delete Account" class="btn btn-primary">
			<input type="submit" value="Cancel" class="btn btn-default" formaction="accountsEdit.jsp" formmethod="post" formnovalidate="formnovalidate">
		</form>	</div>
	</div>
		
</body>
</html>
