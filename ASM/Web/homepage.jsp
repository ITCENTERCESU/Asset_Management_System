<!-- #2 Homepage -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Welcome ______! </h2>
	<br>
	<p>Choose an action:</p>
	<!-- Borrow button -->
	<form action="processborrow.html" method="post">
		<input type="submit" value="Borrow">
	</form>
	<!-- Return button -->
	<form action="processreturn.html" method="post">
		<input type="submit" value="Return">
	</form>
	<br>
	<!-- Asset List button -->
	<form action="processassetlist.html" method="post">
		<input type="submit" value="Asset List">
	</form>
	<!-- Inventory button -->
	<form action="processinventory.html" method="post">
		<input type="submit" value="See Inventory">
	</form>
	<br>
	<br>
	<!-- Logout button -->
	<form action="processlogout.html" method="post">
		<input type="submit" value="Logout">
	</form>
</body>
</html>