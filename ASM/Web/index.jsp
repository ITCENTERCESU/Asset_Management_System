<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./fonts/quicksand/stylesheet.css" />
<link rel="icon" type="image/png" href="./images/information-systems-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
body {
	background: #FD8F14;
	font-size: 100%;
	margin: 0;
	padding: 0;
}

body * {
	font-family: 'quicksandregular'
}

header {
	text-align: center;
	margin: 3em 0;
}

header img {
	height: 5em;
	width: 5em;
	margin: .5em;
}

header #ust-iics-logo {
	width: 4.5em;
}

header h1 {
	margin-bottom: 1em;
}

header p {
	font-variant: small-caps;
	font-size: 2em;
}
/* form .form-group{background:#DA3203;margin:0;padding:5em;box-shadow:.5em .5em .3em gray;} */
form #form-button {
	margin-top: 2em;
}

footer {
	text-align: center;
}

footer h3 {
	font-size: .8em;
}

footer h3 span {
	font-size: 2em;
}
</style>
</head>
<body>

	<div class="container">
		<header>
			<img alt="UST Logo" src="./images/ust-logo.png" id="ust-logo">
			<img alt="UST IICS Logo" src="images/ust-iics-logo.png"
				id="ust-iics-logo">
			<h1>Asset Management System</h1>
			<p>welcome</p>
		</header>
		<div class="row">
			<!-- <div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
				<h6>The username or password you entered is incorrect.</h6>
			</div> -->
			<form role="form" action="processlogin.html" method="post"
				class="col-sm-offset-3 col-sm-6 col-md-offset-4 col-md-4">
				<div class="form-group">
					<input type="text" name="username" required="required"
						placeholder="Username" class="form-control"> <input
						type="password" name="password" required="required"
						placeholder="Password" class="form-control"> <input
						type="submit" value="Login" class="btn btn-primary btn-block"
						id="form-button">
				</div>
			</form>
		</div>
		<footer>
			<h3>
				for the <span>Department of Information Systems</span>
			</h3>
			<p>
				made with <span class="glyphicon glyphicon-heart"></span> by Team
				YMCA
			</p>
		</footer>
		<script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
	</div>
</body>
</html>
