<!-- #5 Successful Borrowing -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
			<table border="1" style="width:100%">
			    <tr>
			    	<td align="center">Item ID</td>
						<td align="center">Item Name</td>
						<td align="center">Date Borrowed</td>
						<td align="center">Due Date</td>
			    </tr>
		    </table>
			<br> 
			<br>
			<input type="submit" value="Home">
	</form>
</body>
</html>