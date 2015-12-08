<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
body {
	background-color: #ff7f00;
	color: white;
}

header {
	text-align: center;
	margin-top: 1em;
}

header #title {
	color: white;
	font-size: 1em;
	margin: 1em 0;
}

header #title .acronym {
	font-size: 6.5em;
	font-weight: bold;
}

header #title #A {
	color: white;
}

header #title #M {
	color: gray;
}

header #title #S {
	color: black;
}

header #welcome {
	font-size: 1.5em;
	font-weight: bolder;
}

form {
	padding: 2em;
	margin-top: 1em;
	background-color: #fdfdfd;
	box-shadow: .3em .3em .1em gray;
}

form #form-button {
	margin-top: 2em;
}

footer {
	text-align: center;
}

footer #for-IS {
	color: white;
	font-size: .8em;
}

footer #for-IS span {
	font-size: 1.25em;
}

footer #made-with {
	font-size: 1em;
}

footer #logos {
	margin: 1em auto;	
}

footer .logo {
	height: 3em;
	width: 3em;
	margin: .5em;
}

footer #ust-iics-logo {
	width: 3.5em;
}
</style>
</head>
<body>
	<div class="container">
		<header>
			<h1 id="title">
				<span class="acronym" id="A">A</span>sset 
				<span class="acronym" id="M">M</span>anagement 
				<span class="acronym" id="S">S</span>ystem
			</h1>
			<p id="welcome">Welcome</p>
		</header>
		<div class="row">
			<!-- <div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
				<h6>The username or password you entered is incorrect.</h6>
			</div> -->
			<form role="form" action="processlogin.html" method="post"
				class="col-xs-offset-1 col-xs-10 col-sm-offset-3 col-sm-6 col-md-offset-4 col-md-4" >
				
				<div class="form-group">
					<input type="text" name="username" placeholder="Username" class="form-control" required autofocus> 
				</div>
				
				<div class="form-group">
					<input type="password" name="password" placeholder="Password" class="form-control" required> 
				</div>
				
				<input type="submit" value="Login" class="btn btn-primary btn-block"
					id="form-button">
			</form>
		</div>
		<footer>
			<h3 id="for-IS">
				for the <span>Department of Information Systems</span>
			</h3>
			<p id="made-with">
				made with <span class="glyphicon glyphicon-heart"></span> by Team YMCA
			</p>
			<div id="logos">
				<img class="logo" id="ust-logo" 
					alt="University of Santo Tomas Logo" src="./images/ust-logo.png" >
				<img class="logo" id="ust-iics-is-logo" 
					alt="Institute of Information and Computing Sciences Logo" src="./images/ust-iics-is-logo.png">
				<img class="logo" id="ust-iics-logo" 
					alt="Information Systems Logo" src="./images/ust-iics-logo.png">
			</div>
		</footer>
		<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
	</div>
</body>
</html>
