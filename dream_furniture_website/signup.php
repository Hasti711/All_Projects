<?php 

include 'conn/conn.php';
include 'inc/header.php';

?>
<!DOCTYPE html>
<html>
<head>
<title>Login </title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Order Tracking Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- custom css file -->
<link rel="stylesheet" href="css/tstyle.css">
<link rel="stylesheet" href="css/test.css">
<!-- //custom css file -->

<!-- google fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //google fonts -->
		
</head>

<body class="t1">
<h1 align = "center" class="t2">Sign up </h1>
<div class="agile-its">
	<h2 class="t3"></h2>
	<div class="w3layouts">
		<div class="photos-upload-view">
			<form action="proc/sp.php" method="POST">
					<div class="agileinfo">
					</div>
						<div class="agileinfo-row">
						<div class="ferry ferry-from">
								<label>Name</label>
								<input type="text" name="n" placeholder="Name" required="">
							</div>
							<div class="ferry ferry-from">
								<label>E-mail</label>
								<input type="email" name="e" placeholder="Email" required="">
							</div>
							<div class="ferry ferry-from">
								<label>Password</label>
								<input type="password" name="p" placeholder="Password" required="">
							</div>
								
							<div class="clear"></div>
						</div>
					<div class="wthree-text"> 
						<div class="wthreesubmitaits">
							<input type="submit" name="s" value="Submit">
						</div>  
					</div>
			</form>
		<div class="clear"></div>
	</div>
</div>
</div>
<?php

include 'inc/footer.php';

?>