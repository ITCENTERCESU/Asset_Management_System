<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<title>Asset Management System</title>
	<style type="text/css">
		img{width:6em;height:6em;padding:auto;margin-bottom:1em;}
		header{text-align:center;margin:3em 1em;}
		form{padding:3em;background:#FD8F14;}
		body{background-color:#FDDFBD;}
		
	</style>
</head>
<body>

	<div class="container">
		<header>
			<h1>Information Systems</h1>
			<h2>Asset Management System</h2>
			<p>Welcome IS Faculty Member!</p>		
		</header>
		<div class="row">
		
			<form role="form" action="processlogin.html" method="post" class="col-sm-offset-4 col-sm-4">
				<img alt="Information Systems Logo" src="./images/ust logo.png" style="position:relative; top:-210px; left:-140px; ">
				<img alt="Information Systems Logo" src="./images/UST_IICS.png" style="position:relative; top:-218px; right:-280px;">
				<input type="text" name="username" required="required" placeholder="Username" class="form-control" style="position:relative; top:-60px;">
				<input type="password" name="password" required="required" placeholder="Password" class="form-control"style="position:relative; top:-30px;">
		
				<input type="submit" value="Login" class="btn btn-default"style="position:relative; right:-108px;">
			</form>	
		
		</div>
	</div>

</body>
</html>
