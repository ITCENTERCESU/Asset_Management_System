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

	<!-- Display Inventory table  -->
	<center><table border="1" width="100%" cellpadding="3" cellspacing="3">
		<tr>
			<th align="center">Item ID</th>
			<th align="center">Item Name</th>
			<th align="center">Status</th>
		</tr>
	</table>
	<br>
	<br>
</center>

	<!-- Add New Item button -->
	<form action="maintenanceprocess.html" method="post">
		<input type="submit" value="Add New Item">
	</form>
	<br> 
	
	<!-- Borrow Item Button -->
	<form action="processborrow.html" method="post">
		<input type="submit" value="Borrow Item">
	</form>
	<br>
	
	<!-- Return Item button -->
	<form action="processreturn.html" method="post">
		<input type="submit" value="Return Item">
	</form>
	<br>
	
	<!-- Delete Item button -->
	<form action="maintenanceprocess.html" method="post">
		<input type="submit" value="Delete Item">
	</form>
	<br> 
	
	<!-- Settings button -->
	<form action="settings.html" method="post">
		<input type="submit" value="Settings">
	</form>
	<br> 
	
	<!-- Logout button -->
	<form action="index.html" method="post">
		<input type="submit" value="Logout">
	</form>
	<br> 
</body>
</html>