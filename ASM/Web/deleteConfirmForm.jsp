<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ASM</title>
</head>
<body>
	<form action="processdeleteconfirm.html" method="post" >
		<h1>Confirm delete for this item:</h1>
		
		<p>Item Id: <input id="item-id" type="text" name="itemId" value="${deleteForm.itemId}" readonly/></p>
		
		<p>Item Name:<input id="item-name" type="text" name="itemName" value="${deleteForm.itemName}" readonly/></p>
		
			
		<input type="submit" value="Delete Item">
	</form>
	
	<input type="submit" value="Cancel" class="btn btn-default" formaction="listdeleteprocess.html" formmethod="post" formnovalidate="formnovalidate"> 
</body>
</html>