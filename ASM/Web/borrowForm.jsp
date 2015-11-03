<!-- #3 Borrower's Form -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="borrowed" type="java.sql.ResultSet" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Insert header here -->
	<h2>Borrower's Form: </h2>
	<br>
	<br>
	<form action="processborrowform.html" method="post">
		<p>ID Number: <input type="text" name="idNum" size="10" required="required"></p>
		<p>Last Name: <input type="text" name="firstName" size="25" required="required"></p>
		<p>First Name: <input type="text" name="itemName" size="25" required="required"></p>
		<br>
		<br> 
		<p>Item Id: <%=borrowed.getString("itemId")%></p> 
		<p>Item Name: <%=borrowed.getString("itemName")%></p>
		<p>Status: <%=borrowed.getString("status")%>
		<input type="submit" value="Submit">
	</form>
	
	<form action = "listborrowprocess.html" method="post">
		<input type = "submit" value="cancel">
	</form>
</body>
</html>