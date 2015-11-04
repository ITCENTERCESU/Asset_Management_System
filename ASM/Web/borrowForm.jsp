
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="icon" type="image/png" href="./images/information-systems-logo.png"/>
<title>Asset Management System</title>
<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:2em 1em;}
		
	</style>

	<%@ page import="java.util.*" %>
	<%@ page import = "java.text.*" %>

</head>

<body>
<div class="container">
	<header>
	<h2>Borrower's Form: </h2></header>
	<br>
	<br>
	 <div class="row">
	<form role="form" action="processborrowform.html" method="post"class="col-sm-offset-4 col-sm-4">
		<p>ID Number: <input type="text" name="idNum" size="10" required="required"placeholder="ID Number" class="form-control"></p>
		<p>Last Name: <input type="text" name="lastName" size="25" required="required"placeholder="Last name" class="form-control"></p>
		<p>First Name: <input type="text" name="firstName" size="25" required="required"placeholder="First name" class="form-control"></p>
		<br>
		<br> 
		<p>Item Id: <input type="text" size="10" name="itemId" value="${borrowForm.itemId}" readonly class="form-control"> </p>
		<p>Item Name:<input type="text" size="50" name="itemName" value="${borrowForm.itemName}" readonly class="form-control"> </p>
		<p>Status: <input type="text" size="20" name="status" value="${borrowForm.status}" readonly class="form-control"> </p>
		
		<br>
		<%
			Date borrowedDateDD = new Date();
			SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
			
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(borrowedDateDD);
			calendar.add(Calendar.DATE, 2);
			String dueDateD = ft.format(calendar.getTime());
			String borrowedDateD = ft.format(borrowedDateDD);
		%>
		
		<p>Date Borrowed: <input type="text" size="20" name="borrowedDate" value="<%out.println(borrowedDateD);%>" readonly class="form-control"></p>

		<p>Due Date: <input type="text" size="20" name="dueDate" value="<%out.println(dueDateD); %>"  readonly class="form-control"></p>
		
		<input type="submit" value="Submit" class="btn btn-default">
	</form>
	
	<form action = "listborrowprocess.html" method="post" class="col-sm-offset-4 col-sm-4">
		<input type = "submit" value="cancel" class="btn btn-default" style="margin: 0.3em 0em;">
	</form>
	</div>
	</div>
</body>
</html>
