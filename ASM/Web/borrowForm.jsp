
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>

	<%@ page import="java.util.*" %>
	<%@ page import = "java.text.*" %>

</head>

<body>

	<h2>Borrower's Form: </h2>
	<br>
	<br>
	<form action="processborrowform.html" method="post">
		<p>ID Number: <input type="text" name="idNum" size="10" required="required"></p>
		<p>Last Name: <input type="text" name="lastName" size="25" required="required"></p>
		<p>First Name: <input type="text" name="firstName" size="25" required="required"></p>
		<br>
		<br> 
		<p>Item Id: <input type="text" size="10" name="itemId" value="${borrowForm.itemId}" readonly> </p>
		<p>Item Name:<input type="text" size="50" name="itemName" value="${borrowForm.itemName}" readonly> </p>
		<p>Status: <input type="text" size="20" name="status" value="${borrowForm.status}" readonly> </p>
		<br>
		<%
			Date borrowedDate = new Date();
			SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
			
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(borrowedDate);
			calendar.add(Calendar.DATE, 2);
			String dueDate = ft.format(calendar.getTime());
		%>
		
		<p>Date Borrowed: <input type="text" size="20" name="borrowedDate" value="<%ft.format(borrowedDate); %>" readonly></p>
		
		<p>Due Date: <input type="text" size="20" name="dueDate" value="<%out.println(dueDate); %>"  readonly></p>
		
		<input type="submit" value="Submit">
	</form>
	
	<form action = "listborrowprocess.html" method="post">
		<input type = "submit" value="cancel">
	</form>
</body>
</html>