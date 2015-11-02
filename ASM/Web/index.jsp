<!-- #1 Log-in page -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Information Systems Asset Management System</h1>
	<br>
	<h2>Welcome IS Faculty Member!</h2>
	<form action="processlogin.html" method="post">
		<p>Username: <input type="text" name="username" size="25" required="required"></p>
		<p>Password: <input type="text" name="password" size="25" required="required"></p>
					
		<input type="submit" value="Log-in">
	</form>
</body>
</html>