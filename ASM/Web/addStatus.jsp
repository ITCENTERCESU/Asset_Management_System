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
		<h2>The item has been added successfully</h2>
		<br/>
		<p>Item ID: ${asset.itemId}</p>
		<p>Item Name: ${asset.itemName}</p>
		<p>Status: ${asset.status}</p>

	<% } else { %>
		<h1>Adding failed</h1>		
	<% } %> 
	
	<br/>
	<p><a href="maintenance.html">HOME.</a></p>

</body>
</html>