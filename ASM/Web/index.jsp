<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<title>Asset Management System</title>
	<style type="text/css">
		body{background-color:#FDDFBD; }
		.row,.form-control{margin:0;}
		header{text-align:center;margin:3em 1em;}
		img{height:6em;width:6em;margin:.5em;}
		form{background:#fff;margin:0;padding:2em;box-shadow:.5em .5em .1em;}
		#form-button{margin-top:2em;}
	</style>
</head>
<body>

	<div class="container">
		<header>
			<div class="row">
				<img alt="UST Logo" src="./images/ust-logo.png">
				<img alt="UST IICS Logo" src="images/ust-iics-logo.png">				
				<h1>Information Systems</h1>
				<h2>Asset Management System</h2>
				<p>Welcome IS Faculty Member!</p>		
			</div>
		</header>
		<div class="row">
			<form role="form" action="processlogin.html" method="post" class="col-sm-offset-4 col-sm-4">
				<input type="text" name="username" required="required" placeholder="Username" class="form-control">
				<input type="password" name="password" required="required" placeholder="Password" class="form-control">
				<input type="submit" value="Login" class="btn btn-info btn-block" id="form-button">
			</form>	
		</div>
	</div>
</body>
</html>
