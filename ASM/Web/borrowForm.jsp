<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" import="java.util.*, java.text.*" %>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
form #about-item, form #about-borrower {
	padding: 3em;
}

form #about-item {
	background-color: #f2f2f2;
	box-shadow: .1em .1em .1em #ccc;
	border-radius: 10px;
}

form #about-item label {
	font-weight: normal;
	font-size: small;
}

form #about-item input {
	font-weight: bold;
}

</style>
</head>

<body>
	<%@include file="navbar.html" %>
<div class="container">
	<form data-toggle="validator" class="row" role="form" action="processborrowform.html" method="post">
<<<<<<< HEAD
=======
		<fieldset id="about-borrower" class="col-xs-12 col-sm-7">
			<legend>About the borrower</legend>
			<p>Kindly fill up all fields on this section.</p>
			
			<div class="form-group">
				<label for="id-number">Borrower ID</label> 
				<input id="id-number" maxlength="10" placeholder="ex. 2015123456" pattern="[0-9]{10}" name="idNum" data-maxlength="10" required="required" class="form-control" autofocus="autofocus">
				<span class="help-block">Minimum of 10 digits</span>
			</div>
			
			<div class="form-group">
				<label for="last-name">Last Name</label>
				<input id="last-name" placeholder="ex. Santos" type="text" name="lastName" required="required" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="first-name">First Name</label> 
				<input id="first-name" placeholder="ex. Jose" type="text" name="firstName"  required="required" class="form-control">
			</div>				
			
			<div class="form-group">
				<label for="contactNumber">Contact Number</label> 
				<input id="contactNumber" placeholder="ex. 09171234567" type="text" name="contactNumber"  required="required" class="form-control">
			</div>	
			
			<div class="form-group">
				<label for="email">Email Address</label> 
				<input id="email" placeholder="ex. 2013056531@ust-ics.mygbiz.com" type="text" name="email"  required="required" class="form-control">
			</div>		
		</fieldset>
		
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
		<fieldset id="about-item" class="col-xs-12 col-sm-5">
			<div class="form-horizontal">
				<p>Please check if this is really the item you want to borrow.</p>
				
				<div class="form-group">
					<label for="item-id" class="control-label col-sm-4">Item ID</label>
					<div class="col-sm-8">
						<input id="item-id"type="text" name="itemId" value="${borrowForm.itemId}" readonly class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label for="item-name" class="control-label col-sm-4">Item Name</label>
					<div class="col-sm-8">
						<input id="item-name" type="text" name="itemName" value="${borrowForm.itemName}" readonly class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label for="category" class="control-label col-sm-4">Category</label>
					<div class="col-sm-8">
						<input id="category" type="text" name="category" value="${borrowForm.category}" readonly class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label for="status" class="control-label col-sm-4">Status</label>
					<div class="col-sm-8">
						<input id="status" type="text" name="status" value="${borrowForm.status}" readonly class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<%
						Date borrowedDateDD = new Date();
						SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
						
						Calendar calendar = Calendar.getInstance();
						calendar.setTime(borrowedDateDD);
						calendar.add(Calendar.DATE, 2);
						String dueDateD = ft.format(calendar.getTime());
						String borrowedDateD = ft.format(borrowedDateDD);
					%>
					
					<label for="date-borrowed" class="control-label col-sm-4">Date Borrowed</label>
					<div class="col-sm-8">
						<input id="date-borrowed" type="text" name="borrowedDate" value="<%out.println(borrowedDateD);%>" readonly class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label for="due-date" class="control-label col-sm-4">Due Date</label>
					<div class="col-sm-8">
						<input id="due-date" type="text" name="dueDate" value="<%out.println(dueDateD); %>"  readonly class="form-control"class="col-sm-offset-4 col-sm-4">
					</div>
				</div>
			</div>
		</fieldset>
		
		<fieldset id="about-borrower" class="col-xs-12 col-sm-7">
			<legend>About the borrower</legend>
			<p>Kindly fill up all fields on this section.</p>
			
			<div class="form-group">
				<label for="id-number">Borrower ID</label> 
				<input id="id-number" maxlength="10" placeholder="ex. 2015123456" pattern="[0-9]{10}" name="idNum" data-maxlength="10" required="required" class="form-control" autofocus="autofocus">
				<span class="help-block">Minimum of 10 digits</span>
			</div>
			
			<div class="form-group">
				<label for="last-name">Last Name</label>
				<input id="last-name" placeholder="ex. Santos" type="text" name="lastName" required="required" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="first-name">First Name</label> 
				<input id="first-name" placeholder="ex. Jose" type="text" name="firstName"  required="required" class="form-control">
			</div>				
			
			<div class="form-group">
				<label for="contactNumber">Contact Number</label> 
				<input id="contactNumber" placeholder="ex. 09171234567" type="text" name="contactNumber"  required="required" class="form-control">
			</div>	
			
			<div class="form-group">
				<label for="email">Email Address</label> 
				<input id="email" placeholder="ex. 2013056531@ust-ics.mygbiz.com" type="text" name="email"  required="required" class="form-control">
			</div>					
			
			<div id="buttons">
				<div class="form-group">
					<input type="submit" value="Borrow this item" class="btn btn-primary">
			</div>
				<div class="form-group">
					<input type="submit" value="Cancel" class="btn btn-default" formaction="listborrowprocess.html" formmethod="post" formnovalidate="formnovalidate"> 
				</div>
			</div>
		</fieldset>
	</form>
	<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="./scripts/validator.min.js"></script>
</div>
</body>
</html>
