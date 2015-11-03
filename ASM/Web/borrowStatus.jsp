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

	<%if (request.getParameter("success").equals("true")) { %>
		<h2>Borrowing Successful!</h2>
		<br/>
		<p>ITEM DETAILS: </p>
		<p>Item ID: ${borrowed.itemId}</p>
		<p>Item Name: ${borrowed.itemName}</p>
		<p>Borrowed Date: $(borrowed.borrowedDate)</p>
		<p>Due Date: $(borrowed.dueDate)</p>
		<br>
		<p>BORROWER'S DETAILS
		<p>ID Number: ${borrowed.idNum}</p>
		<p>Last Name: ${borrowed.lastName}</p>
		<p>First Name: ${borrowed.firstName}</p>
		<p>Status: $(borrowed.status)</p>
		
		<form action="inventoryprocess.html" method="post">
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

	<% } else { %>
		<h1>Adding failed</h1>		
	<% } %> 
	
	<br/>
	<p><a href="inventoryprocess.html">HOME.</a></p>
	
	
	
	
	
</body>
</html>