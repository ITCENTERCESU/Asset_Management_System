<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="inventory" type="java.sql.ResultSet" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Insert header here -->

	<!-- Display Inventory table  -->
	<table>
		<tr>
			<th align="center">Item ID</th>
			<th align="center">Item Name</th>
			<th align="center">Status</th>
		</tr>
		
		<% while(inventory.next()) {	%>
				<tr>
					<td><%=inventory.getString("itemId")%></td>
					<td><%=inventory.getString("itemName")%></td>
					<td><%=inventory.getString("status")%></td>
				</tr>			
		<% } %>
	</table>
	<br>
	<br>

	<!-- Add New Item button -->
	<form action="addItem.jsp" method="post">
		<input type="submit" value="Add New Item">
	</form>
	<br> 
	
	<!-- Borrow Item Button -->
	<form action="borrowList.jsp" method="post">
		<input type="submit" value="Borrow Item">
	</form>
	<br>
	
	<!-- Return Item button -->
	<form action="returnForm.jsp" method="post">
		<input type="submit" value="Return Item">
	</form>
	<br>
	
	<!-- Delete Item button -->
	<form action="deleteprocess.html" method="post">
		<input type="submit" value="Delete Item">
	</form>
	<br> 
	
	<!-- Settings button -->
	<form action="addaccount.html" method="post">
		<input type="submit" value="New Account">
	</form>
	<br> 
	
	<!-- Logout button -->
	<form action="index.jsp" method="post">
		<input type="submit" value="Logout">
	</form>
	<br> 
</body>
</html>