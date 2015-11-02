<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Insert header here -->
	
	<form action="inventory.jsp" method="post">
		<table border="1" style="width:100%">
	  	<tr>
	    <tr>
	    	<td align="center">Item ID</td>
				<td align="center">Item Name</td>
				<td align="center">Status</td>
				<td align="center">Action-Borrow</td>
	    </tr>
	    <tr><td><ol><li><a href="maintenanceprocess.html?id=&action=edit">
						  	<img src="images/Editor.ico"/>
						  </a></li></ol></td></tr>
	    </table>
	    <p></p>
			<input type="submit" value="Home">
	</form>
</body>
</html>