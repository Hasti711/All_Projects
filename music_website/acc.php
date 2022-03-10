<?php

include 'conn.php';

?>
<!DOCTYPE html>
<html>
<head>
	<title>Music Magic</title>
	<!-- custom-theme -->
<link rel="icon" href="images/logo2.png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Symphony Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- <link href="css/mystyles.css" rel="stylesheet">  -->
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Sofia" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet">
</head>
<body>
<!-- banner -->
	<div class="banner1">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1><a class="navbar-brand" href="index.php">Music<span>Magic</span></a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--iris">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item"><a href="index.php" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="rj_regi.php" class="menu__link">RJ Registration</a></li>
							<li class="menu__item"><a href="music.php" class="menu__link">Music</a></li>
							<li class="menu__item">
								<a href="acc.php" class="menu__link">Account</a>
							</li>
							<li class="menu__item"><a href="mail.php" class="menu__link">Mail Us</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
<!-- //banner -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="w3l_breadcrumbs_left">
				<ul>
					<li><a href="index.php">Home</a><i>/</i></li>
					<li>Account</li>
				</ul>
			</div>
			<div class="w3_agile_breadcrumbs_right">
				<h2>Account</h2>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- music-bottom -->
<?php if(!isset($_SESSION['id'])) { ?>
	<div class="music-bottom">
		<div class="container">
			<h3>Sign up to receive all latest album updates</h3>
			<form action="sp.php" method="post">
				<input name="Name" placeholder="Name" type="text" required="">
				<input name="email" placeholder="Email" type="email" required="">
				<input name="password" placeholder="Password" type="Password" required="" maxlength="8">
				<input type="submit" value="Sign Up Now" name="signup">
			</form>
		</div>
	</div>
	<?php  } else { ?>
	<div class="music-bottom">
	<div class="container">
	<form action="lop.php" method="post">
		<input type="submit" value="Log Out">
	</form>
	</div>
	</div>
	<?php } ?>
<!-- //music-bottom -->
<!-- music-bottom -->
<?php if(!isset($_SESSION['id'])) { ?>
	<div class="music-bottom acc_pass">
		<div class="container">
			<h3>Log In To Stay Tune</h3><center>
			<form action="lp.php" method="post">
				<input name="email" placeholder="Email" type="email" required="">
				<input name="password" placeholder="Password" type="Password" required="" maxlength="8" class="acc_pass">
				<input type="submit" value="Log In Now" name="login">
			</form></center>
			<center>
			<form action="forget_pass.php" method="post">
				<input name="email2" placeholder="Email" type="email" required="">
				<input type="submit" value="Forget Password ???" name="forget_pass">
			</form></center>
		</div>
	</div>
<!-- //music-bottom -->
<?php  } 

include 'footer.php';

?>
</body>
</html>