<?php

include 'conn.php';

?>
<!DOCTYPE html>
<html lang="en">
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
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Sofia" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet"></head>
	
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
							<li class="menu__item menu__item--current"><a href="mail.php" class="menu__link">Mail Us</a></li>
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
					<li>Reset Password</li>
				</ul>
			</div>
			<div class="w3_agile_breadcrumbs_right">
				<h2>Reset Password</h2>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- mail -->
	<div class="latest-albums">
		<h4 class="sent_res"></h4>
		<div class="container">
			<h3 class="agileits_w3layouts_head"><span>Music Magic</span></h3>
			<!-- <p class="w3_agileits_para">Quisque faucibus vel leo a luctus.</p> -->
			<div class="wthree_latest_albums_grids gallery">
				<div class="col-md-8 agile_mail_grid_left">
					<form method="post" name="mail_form" id="mailform">
						<?php

if(isset($_GET["email"]) && isset($_GET["action"]))
{
	$email = $_GET["email"];
	$query = mysqli_query($conn, "SELECT * FROM registration WHERE `email`='" . $email . "';");
                        $row = mysqli_num_rows($query);
                        if ($row == "") {
                            $error = '<h2>Invalid Link</h2>';
                        } else {
                            $row = mysqli_fetch_assoc($query); }                           
}
?>
						<input type="password" name="newpass" placeholder="new password" required="">
						<input type="password" name="confpass" placeholder="Confirm Password" required="">
						<input type="submit" value="Reset Password" name="reset">
					</form>
					<?php 
if(isset($_POST["reset"]))
{
	$error = "";
	$newpass = $_POST["newpass"];
	$confpass = $_POST["confpass"];
if ($newpass != $confpass) {
          $error = "<p>Password do not match, both password should be same.<br /><br /></p>";
       }
       if ($error != "") {
            echo $error;
       } else {
       mysqli_query($conn, "UPDATE `registration` SET `password` = '" . $newpass . "' WHERE `email` = '" . $email . "'");
        echo '<p>Congratulations! Your password has been updated successfully.</p>';
                        } }
	?>
				</div>
				<div class="col-md-4 w3_agileits_mail_grid_right">
					<div class="wthree_mail_grid_right">
						<img src="images/logo2.png" alt=" " class="img-responsive" style="background: white;" />
						<h4>Music Magic<span></span></h4>
						<ul class="agileinfo_phone_mail">
							<li><i class="fa fa-home" aria-hidden="true"></i>Address: AF23 Avenue, London.</li>
							<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone: +1234 567 893</li>
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="magic_music@gmail.com">magic_music@gmail.com</a></li>
						</ul>
						<ul class="social_agileinfo">
							<li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //mail -->
<!-- footer -->
<?php include 'footer.php'; ?>
<!-- //footer -->
<!-- copy-right -->
<!-- //copy-right -->
<!-- bootstrap-pop-up -->
<!-- //bootstrap-pop-up -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smooth-scrolling -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
</script>
</body>
</html>