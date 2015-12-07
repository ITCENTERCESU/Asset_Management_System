
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<title>Asset Management System</title>
	<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:3em 1em;}
		
		form{padding:2em;background:#FFD4AA;margin:3em;border-radius: 25px;border: 2px solid  #FF9933;}
		body{background-color:#FDDFBD;}
		
	</style>
</head>
<body>
	<%if (request.getParameter("success").equals("true")) { %>
		<form action="inventoryprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
			<h2>Item has been returned successfully!</h2>
			<br>
			<%
							Date borrowedDateDD = new Date();
							SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
							String borrowedDateD = ft.format(borrowedDateDD);
			%>
			<p>Date returned: <b><%out.println(borrowedDateD);%></b></p> 
			<br>
			<p><b>Thank You!</b></p>
	
			<br>
			<input type="submit" value="Home"class="btn btn-default">
	<% } else { %>
		<h1>Adding failed</h1>
	<% } %> 
	</form>
</body>
</html>