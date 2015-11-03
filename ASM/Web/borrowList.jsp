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
	
	<table>
		<tr>
			<th align="center">Item ID</th>
			<th align="center">Item Name</th>
			<th align="center">Status</th>
			<th align="center">Action-Borrow </th>
		</tr>
		
		<% while(borrowed.next()) {	%>
				<tr>
					<td><%=borrowed.getString("itemId")%></td>
					<td><%=borrowed.getString("itemName")%></td>
					<td><%=borrowed.getString("status")%></td>
					<td align="center">
					  <a href="assetmaintenance.html?itemId=<%=borrowed.getString("itemId")%>&action=borrow">
					  	<img src="images/Editor.ico"/>
					  </a>
					</td>
				</tr>			
		<% } %>
	</table>
	
	<form action="inventoryprocess.html">
		<input type="submit" value="Home">	
	</form>
</body>
</html>