<!-- #4 Return Form -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Insert header here -->
	<h2>Return Form: </h2>
	<br>
	<br>
	<form action="processreturnform.html" method="post">
		<p>ID Number: <input type="text" name="idNum" size="10" required="required"></p>
		
		<br>
		<input type="submit" value="Next">
	</form>
	
	<form action="inventoryprocess.html" method="post">
		<input type="submit" value="Cancel">
	</form>
</body>
</html>