<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
	<link rel="icon" type="image/png" href="./images/information-systems-logo.png"/>
	<title>Asset Management System</title>
	<style type="text/css">
		img{width:5em;height:5em;margin:auto;}
		header{text-align:center;margin:3em 1em;}
		form{padding:3em;background:#fddfbd;}
	</style>
</head>
<body>
<<<<<<< HEAD
	<!-- comment ito -->
	<h1>Information Systems Asset Management System</h1>
	<!-- Dapat hiwalay header natin noh? Mas ok kpg gnun pra reusable-->
	<!-- Lalagyan ba natin ng logo? :) yuuh..IICS logo :)--> 
	<!-- Orange ba color ng IS? YES :)-->
	<br>
	<h2>Welcome IS Faculty Member!</h2>
	<form action="processlogin.html" method="post">
		<p>Username: <input type="text" name="username" size="25" required="required"></p>
		<p>Password: <input type="password" name="password" size="25" required="required"></p>
					
		<input type="submit" value="Log-in">
	</form>
	
=======
	<div class="container">
		<header>
			<h1>Information Systems</h1>
			<h2>Asset Management System</h2>
			<p>Welcome IS Faculty Member!</p>		
		</header>
		<div class="row">
			<form role="form" action="processlogin.html" method="get" class="col-sm-offset-4 col-sm-4">
				<img alt="Information Systems Logo" src="./images/information-systems-logo.png">
				<input type="text" name="username" required="required" placeholder="Username" class="form-control">
				<input type="password" name="password" required="required" placeholder="Password" class="form-control">
				<input type="submit" value="Login" class="btn btn-default">
			</form>		
		</div>
	</div>
>>>>>>> branch 'master' of https://github.com/natsukihanamura/Asset_Management_System.git
</body>
</html>
