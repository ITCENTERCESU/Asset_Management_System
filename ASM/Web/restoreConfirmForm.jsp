<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>
   
   <jsp:useBean id="restoreForm" type="com.ust.model.AssetBean" scope="request" /> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./main.css" />
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>ASM</title>
<style type="text/css">
form #delete-item {
	padding: 3em;
}

p {
	font-weight: normal;
	font-size: 1.5em;
}

label {
	font-weight: bold;
	font-size: 1.5em;
}
</style>
</head>
<body>
	<%@include file="navbar.html"%>
	<div class="container">
		<form action="processrestoreconfirm.html" method="post">
			<fieldset id="delete-item" class="col-xs-12 col-sm-7">
				<legend>Confirm delete for this item:</legend>
				<div class="form-group">
					<label for="item-id">Item Id: <input id="item-id"
						type="text" name="itemId" value="${restoreForm.itemId}" readonly class="form-control" /></label>
				</div>

				<div class="form-group">
					<label for="item-name">Item Name:<input id="item-name"
						type="text" name="itemName" value="${restoreForm.itemName}"
						readonly class="form-control"/></label>
				</div>

				<div class="form-group">
					<label for="item-name">Category:<input id="item-name"
						type="text" name="category" value="${restoreForm.category}"
						readonly class="form-control"/></label>
				</div>
				

				<div class="col-sm-12" id="buttons">
					<div class="form-group">
						<input type="submit" value="Restore Item" class="btn btn-primary">
					</div>



					<div class="form-group">
						<input type="submit" value="Cancel" class="btn btn-default"
							formaction="listdeleteprocess.html" formmethod="post"
							formnovalidate="formnovalidate">
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>
