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
		padding-top: 8em;
	}
		/* img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:2em 10em;}
		.lalagyan{margin:-360px 590px -150px;background:#FFD4AA;width:30%;height:273px; box-shadow:.5em .5em .1em;border-radius: 25px;position:absolute}
		.lalagyan2{margin:-20px 40px -260px;width:40%;height:80px; position:absolute;}
		.table{height:100%;width:513px;margin-right:auto;}
		body{background-color:#FDDFBD;}
		.a { font-size: 250%; }
		.container-fluid{background-color: #FF9933;} */
	</style>
</head>
<body>
	<%@include file="navbar.html" %>
	<div class="container">
		<div class="row">
			<!-- buttons -->
			<div class="col-xs-12 col-md-3 col-md-push-9">
				
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


<div class="container">

	<div class="row">
	<div class="lalagyan">
	<!-- Add New Item button may something sa button -->
	<form action="addItem.jsp" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Add New Item" class="btn btn-default" style="position:absolute; top: 20px;right:-10px;">
	</form>
	<br> 
	<br>
	<!-- Borrow Item Button -->
	<form action="listborrowprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Borrow Item" class="btn btn-default"style="position:absolute; top: 50px;right:-5px;">
	</form>
	<br>
	<br>
	<!-- Return Item button -->
	<form action="returnForm.jsp" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Return Item"class="btn btn-default"style="position:absolute; top: 80px;right:-3px;">
	</form>
	<br>
	<br>
	<!-- Delete Item button -->
	<form action="deleteprocess.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Delete Item"class="btn btn-default"style="position:absolute; top:110px;right:-2px;">
	</form>
	<br>
	<br> 
	</div>
	<div class="lalagyan2" class="list-inline">
	
	<!-- Settings button -->
	<form action="addaccount.html" method="post"class="col-sm-offset-4 col-sm-4">
		<input type="submit" value="Accounts"class="btn btn-default"style="position:absolute; top: 20px; right:70px;">
	</form>
	<br> 
	<br>

	<!-- Logout button -->



	<form action="processlogout.html" method="post"class="col-sm-offset-4 col-sm-4">

	<input type="submit" value="Logout"class="btn btn-default"style="position:absolute; top: -1px; right:-50px;">

	</form>


	<br>
	</div>
	</div>
	</div>
	
	<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>

</body>
</html>
