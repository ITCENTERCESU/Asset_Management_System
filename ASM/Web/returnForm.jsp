<!-- #4 Return Form -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
	/* img{width:5em;height:5em;margin:auto;}
	header{text-align:center;margin:1em 1em;}
	form{padding:2em;background:#FD8F14;}
	form{padding:2em;background:#FFD4AA;}
	.h2 { font-size:100%; }
	.container-fluid{background-color: #FF9933;}
	body{background-color:#FDDFBD;} */
</style>
</head>
<%@include file="navbar.html" %>
<body>
	<div class="container">
		<div class="row">
			<form role="form" action="processreturn.html" method="post" class="col-sm-offset-4 col-sm-4">
				<fieldset>
					<legend>About item borrowed</legend>
					
					<div class="form-group">
						<label for="borrower-id">Borrower ID</label>
						<input id="borrower-id" placeholder="ex. 2015123456" type="text" maxlength="10" name="idNum" required="required" class="form-control" autofocus="autofocus">
					</div>
					
					<div class="form-group">
						<label for="item-id">Item ID</label>
						<input id="item-id" type="text" placeholder="ex: 0001" maxlength="4" name="itemID" required="required" class="form-control">
					</div>				
				</fieldset>
				
				<input type="submit" value="Next" class="btn btn-primary">
				<input type="submit" value="Cancel" class="btn btn-default" formaction="inventoryprocess.html" formmethod="post" formnovalidate="formnovalidate">
			</form>
		</div>
	</div>
</body>
</html>
