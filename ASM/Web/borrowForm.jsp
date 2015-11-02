<!-- #3 Borrower's Form -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Insert header here -->
	<h2>Borrower's Form: </h2>
	<br>
	<br>
	<form action="processborrowform.html" method="post">
		<p>ID Number: <input type="text" name="idNum" size="10" required="required"></p>
		<p>Last Name: <input type="text" name="firstName" size="25" required="required"></p>
		<p>First Name: <input type="text" name="itemName" size="25" required="required"></p>
		<br>
		<input type="submit" value="Submit">
	</form>
	
	<form action = "inventory.html" method="post">
		<input type = "submit" value="cancel">
	</form>
</body>
</html>