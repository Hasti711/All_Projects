<?php require_once("conn/conn.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> <!-- Testimonials js-->
	<link rel="stylesheet" href="css/lightbox.css">
	<link rel="stylesheet" href="css/test.css">
	<link rel="stylesheet" href="css/wstyle.css">
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,700i,800,900" rel="stylesheet">
	  	<!-- scripts -->
	<script src="js/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
  $("#flip1").click(function(){
    $("#panel1").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#flip2").click(function(){
    $("#panel2").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#flip3").click(function(){
    $("#panel3").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#flip4").click(function(){
    $("#panel4").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#flip5").click(function(){
    $("#panel5").slideToggle("slow");
  });
});
</script>
</head>
<body>
	<meta nam>
	<div class="agile-banner">
			<nav class="navbar w3-navbar">
					<div class="container-fluid">
						<div class="nav-top">
							<div class="w3-contact">
								<a> <span class="fa fa-volume-control-phone" aria-hidden="true"> </span>+91 984 722 3758</a>
								<a href="mailto:abcd@yoursite.com"><span class="fa fa-envelope-o" aria-hidden="true" ></span>service@dreamfurniture.com</a>
							</div>
							<div class="w3-socials">
								<ul>
									<li>
										<a href="#"><span class="fa fa-facebook"></span></a>
									</li>
									<li>
										<a href="#"><span class="fa fa-vk"></span></a>
									</li>
									<li>
										<a href="#"><span class="fa fa-pinterest-p"></span></a>
									</li>
									<li>
										<a href="#"><span class="fa fa-twitter"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="navbar-header">
							  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							  </button>
							  <!-- Logo -->
							  <div class="logo-container">
								<div class="logo-wrap">
								  <a href="" class="scroll">
									DreamFurniture
								  </a>
								</div>
							  </div>
							</div> <!-- end navbar-header -->
							<div class="nav-wrap">
								<div class="collapse text-center navbar-collapse w3ls-nav navbar-collapse">
									<ul class="nav navbar-nav w3ls-nav1 text-center">
										<li>
											<div id="flip1">Living Room</div>
											<div id="panel1">
												<ol class="nav navbar-nav w3ls-nav1 text-center">
													<li>
												    <a href="wallunit.php">Wall Unit</a></li>
													<li><a href="tvunit.php">TV Unit</a></li>
													<li><a href="sectional.php">Sectional</a></li>
													<li><a href="sofa.php">Sofa</a></li>
													<li><a href="sofachair.php">Sofa Chair</a></li>
													<li><a href="ottoman.php">Ottoman</a></li>
												</ol>
											</div>
										</li>
										<li>
											<div id="flip2">Bed Room</div>
											<div id="panel2">
												<ol class="nav navbar-nav w3ls-nav1 text-center">
													<li><a href="bed.php">Bed</a></li>
												</ol>
											</div>
										</li>
										<li>
											<div id="flip3">Kitchen</div>
											<div id="panel3">
												<ol class="nav navbar-nav w3ls-nav1 text-center">
													<li><a href="table.php">Dinning Table</a></li>
												</ol>
											</div>
										</li>
										<li>
											<div id="flip4">Office</div>
											<div id="panel4">
												<ol class="nav navbar-nav w3ls-nav1 text-center">
													<li><a href="chair.php">Chairs</a></li>
													<li><a href="table.php">Table</a></li>
													<li><a href="wallunit.php">Wall Unit</a></li>
												</ol>
											</div>
										</li>
										<li>
											<div id="flip5">Hotel</div>
											<div id="panel5">
												<ol class="nav navbar-nav w3ls-nav1 text-center">
													<li><a href="sofa.php">Sofa</a></li>
													<li><a href="table.php">Dining Table</a></li>
													<li><a href="bed.php">Bed</a></li>
												</ol>
											</div>
										</li>
										<li>
										<?php
										if(isset($_SESSION["e"]))
										{
											echo "<a href=logout.php>Log Out</a>";
											echo "</li>";
										}
										else
										{
										echo "<li>
											<a href=login.php>Login</a>
										</li>
										<li>
											<a href=signup.php>Sign up</a>
										</li>";
										}
										?>
									</ul>
								</div>
							</div> <!-- end col -->
						</div> <!-- end row -->
					</div> <!-- end container -->
			</nav> <!-- end navbar -->
		</div>