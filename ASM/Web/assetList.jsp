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
	<!-- Trying the search button -->
	<form action="borrowForm.jsp" method="get" class="formStyle" > 

	<input name="phrase" type="text" size="15" maxlength="50" class="textForm" value="" /> 

	<input type="hidden" name="searchType" value="0" /> 
	<input type="hidden" name="where" value="0" /> 
	<input type="hidden" name="forum" value="" /> 
	<input type="hidden" name="action" value="search" /> 
	<input type="hidden" name="searchGo" value="1" /> 

	<input type="submit" value="Quick Search" class="inputButton" /> 

</form> 
	
	
	<!-- Main code -->
	<form action="homepage.jsp" method="post">
		<center><table border="1" style="width:100%">
  	<tr>
    <td><b>Assets in the Faculty of Information Systems :</b></td>
    </tr>
    <tr>
    	<th align="center">ID</th>
			<th align="center">Item ID</th>
			<th align="center">Item Name</th>
    </tr>
    <tr><td><ol><li>Books</li></ol></td></tr>
    </table>
    <p></p>
		<input type="submit" value="Home"></center>
	</form>
</body>
</html>