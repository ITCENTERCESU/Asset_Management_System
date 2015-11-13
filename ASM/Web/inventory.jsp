<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.io.*,java.util.*"%>
<jsp:useBean id="inventory" type="java.sql.ResultSet" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./fonts/quicksand/stylesheet.css" />
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/information-systems-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
body {
	padding-top: 10em;
}
table {
	padding: 1em;
	font-size: 1.5em;
}
table caption {
	 color: black;
	 font-size: 2em;
	 font-weight: bold;
}
.row button {
	margin: 1em;}
</style>
</head>
<body>
	<%@include file="navbar.html" %>
	
	<div class="container">
		<div class="row">
			<!-- buttons -->
			<div class="col-xs-12 col-md-3 col-md-push-9">
				<form method="post">
					<!-- Add New Item Button -->
					<button formaction="addItem.jsp" type="submit" class="btn btn-default">
						Add New Item
					</button>
					
					<!-- Borrow Item Button -->
					<button formaction="listborrowprocess.html" type="submit" class="btn btn-default">
						Borrow Item
					</button>
					
					<!-- Return Item button -->
					<button formaction="returnForm.jsp" type="submit" class="btn btn-default">
						Return Item
					</button>
					
					<!-- Delete Item button -->
					<button formaction="deleteprocess.html" formmethod="post" type="submit" class="btn btn-default">
						Delete Item
					</button>
				</form>
			</div>
			<div class="col-xs-12 col-md-9 col-md-pull-3">
				<!-- inventory table  -->
				<div class="table-responsive"> 
					<table class="table table-striped table-bordered" role="table">
						<caption>Inventory</caption>
						<tr>
							<th>Item ID</th>
							<th>Item Name</th>
							<th>Status</th>
						</tr>
			
						<%
							while (inventory.next()) {
						%>
						<tr>
							<td><%=inventory.getString("itemId")%></td>
							<td><%=inventory.getString("itemName")%></td>
							<td class=
								<%=(inventory.getString("status").equals("available")) ? "success" : "danger"%>>
								<%=inventory.getString("status")%>
							</td>
						</tr>
						<%
							}
						%>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
</body>
</html>
