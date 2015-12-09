<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="search" type="java.sql.ResultSet" scope="request" />


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%if (!search.isBeforeFirst()) { %>
	<h2>Record does not exist.</h2>
	<%}
	else {%>
	<center>
	<h2>List of Activities</h2>
	</center>
	<table border="1" width="100%" cellpadding="3" cellspacing="3">

		<tr>
			<th width="10%" align="center">Item ID</th>
			<th align="center">Item Name</th>
			<th align="center">Category</th>
			<th width="10%" align="center">Status</th>
		</tr>

		<% 
					while(search.next()) {	
		%>
		<tr>
			<td width="10%" align="center"><%= search.getInt("itemId")%></td>
			<td align="center"><%= search.getString("itemName")%></td>
			<td align="center"><%= search.getString("Category")%></td>
			<td width="10%" align="center"><%= search.getString("status")%></td>
		</tr>
		<% } %>
	</table>
	<%} %>
</body>
</html>