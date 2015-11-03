<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>ASM</title>
</head>
<body>
	
	<h1>Information Systems Asset Management System</h1>
	<!-- Dapat hiwalay header natin noh? Mas ok kpg gnun pra reusable-->
	<!-- Lalagyan ba natin ng logo? :) yuuh..IICS logo :)--> 
	<!-- Orange ba color ng IS? YES :)-->
	<br>
	<h2>Welcome IS Faculty Member!</h2>
	<form action="processlogin.html" method="get">
		<p>Username: <input type="text" name="username" size="25" required="required"></p>
		<p>Password: <input type="password" name="password" size="25" required="required"></p>
					
		<input type="submit" value="Log-in">
	</form>
	
</body>
</html>