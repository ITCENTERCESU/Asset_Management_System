<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Add New Item</h2>
	<form action="addprocess.html" method="post">
		<p>Item ID <input type="text" name="itemId" size="25" required="required"></p>
		<p>Item Name: <input type="text" name="itemName" size="25" required="required"></p>
		<!--  <input type="hidden" name="action" value="insert">  -->
		<input type="submit" value="Add">
	</form>
	
	<form action="inventory.jsp" method="post">
		<input type="submit" value="Cancel">
	</form>
</body>
</html>