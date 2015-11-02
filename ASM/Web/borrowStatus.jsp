<!-- #5 Successful Borrowing -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="inventory.jsp" method="post">
		<h2>Borrowing successful!</h2>
		<br>
		<p><b>Here is the list of all the things you had borrowed. 
		Please return them on time. </b></p>
		<br>
		<center>
			<table border="1" style="width:100%">
			    <tr>
			    	<td align="center">Item ID</th>
						<td align="center">Item Name</th>
						<td align="center">Date Borrowed</th>
						<td align="center">Due Date</th>
			    </tr>
		    </table>
			<br> 
			<br>
			<input type="submit" value="Home">
		</center>
	</form>
</body>
</html>