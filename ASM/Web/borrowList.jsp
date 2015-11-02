<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Insert header here -->
	
	<form action="inventory.jsp" method="post">
		<center><table border="1" style="width:100%">
	  	<tr>
	    <tr>
	    	<td align="center">Item ID</th>
				<td align="center">Item Name</th>
				<td align="center">Status</th>
				<td align="center">Action-Borrow</th>
	    </tr>
	    <tr><td><ol><li><a href="maintenanceprocess.html?id=&action=edit">
						  	<img src="images/Editor.ico"/>
						  </a></li></ol></td></tr>
	    </table>
	    <p></p>
			<input type="submit" value="Home"></center>
	</form>
</body>
</html>