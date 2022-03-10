<!DOCTYPE html>
<html lang="en">
<head>
<title>Music Magic</title>
<!-- custom-theme -->
<link rel="icon" href="images/logo2.png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Music Magic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
<link rel="icon" href="images/logo2.png">
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Sofia" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet"></head>
	
<body>
<!-- banner -->
<div class="banner">
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
							<li class="menu__item menu__item--current"><a href="index.php" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="rj_regi.php" class="menu__link">Rj Registration</a></li>
							<li class="menu__item"><a href="music.php" class="menu__link">Music</a></li>
							<li class="menu__item">
								<a href="acc.php" class="menu__link">Account</a>
							</li>
							<li class="menu__item"><a href="mail.php" class="menu__link">Mail Us</a></li>
						</ul>
					</nav>
				</div>
			</nav>
			<div class="agile_banner_info">
				<h3>music</h3>
				<div class="agile_banner_info_pos">
					<h2>magic of</h2>
				</div>
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- about -->
	<div class="about">
		<div class="container">
			<div class="w3_agile_about_grids">
				<div class="col-md-6 w3_agile_about_grid_left">
					<img src="images/5.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="col-md-6 w3_agile_about_grid_right">
					<h3>Welcome to Music Magic</h3>
					<h4>Music Magic</h4>
					<p>Music is a part of all of our lives, from when we’re growing up to when we’re old. We grow up to the sound of our mothers singing us lullabies so that we’d go to sleep.
					<span> Music is one of the most calming and soothing things if you let it be.
					It comes from melodies and tunes strung together by people who sing and play musical instruments. The power of music shows in the simplest of things.</span></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //about -->
<!-- features -->
	<div class="features">
		<div class="container">
			<div class="col-md-6 agile_features_left">
				<img src="images/7.jpg" alt=" " class="img-responsive" />
			</div>
			<div class="col-md-6 agile_features_right">
				<p><a href="mailto:Music Magic@example.com">Music Magic@example.com</a>
					Get Updates about Latest Live Music Shows</p>
				<h4>Opening Timings</h4>
				<ul>
					<li><span>Monday</span>: 10:00 AM - 5:00 PM</li>
					<li><span>Tuesday</span>: 10:00 AM - 5:00 PM</li>
					<li><span>Wednesday</span>: 10:00 AM - 5:00 PM</li>
					<li><span>Saturday</span>: 8:00 AM - 3:00 PM</li>
					<li><span>Sunday</span>: Closed</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //features -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3_agile_newsletter_left">
				<p>Subscribe to Website<br><br><br>
				Upcoming Features :- <br>"Radio  Stations" by Music Magic</p>
			</div>
			<div class="col-md-6 w3_agile_newsletter_right">
				<?php if(!isset($_SESSION['sub_email'])) { ?>
				<form action="indexp.php" method="post">
					<input type="email" name="Email" placeholder="Email..." required="">
					<input type="submit" value="Send" name="Send">
				</form>
			<?php } else { ?>
			<form action="unsubp.php" method="post">
					<input type="submit" value="Unsubscribe" name="unsub">
				</form> <?php } ?>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
<!-- team -->
	<div class="team">
		<div class="col-md-3 agile_team_left">
			<h3>Our Selector Team For RJ's</h3>
		</div>
		<div class="col-md-9 agile_team_grid">	
			<ul id="flexiselDemo1">	
				<li>
					<div class="hovereffect1 w3ls_banner_bottom_grid">
						<img src="images/7.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<h4>Robert Ali</h4>
							<ul class="social_agileinfo">
								<li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</li>
				<li>
					<div class="hovereffect1 w3ls_banner_bottom_grid">
						<img src="images/10.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<h4>Laura Thomas</h4>
							<ul class="social_agileinfo">
								<li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</li>
				<li>
					<div class="hovereffect1 w3ls_banner_bottom_grid">
						<img src="images/8.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<h4>Michael Roy</h4>
							<ul class="social_agileinfo">
								<li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</li>
				<li>
					<div class="hovereffect1 w3ls_banner_bottom_grid">
						<img src="images/9.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<h4>Jonathan Carl</h4>
							<ul class="social_agileinfo">
								<li><a href="#" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="w3_instagram"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //team -->
<!-- latest-albums -->
	<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head">Latest released <span>albums</span></h3>
			<!--<p class="w3_agileits_para">Quisque faucibus vel leo a luctus.</p>-->
			<div class="wthree_latest_albums_grids">
				<div class="col-md-4 wthree_latest_albums_grid_left">
					<figure class="effect-julia">
						<img src="images/14.jpg" alt=" " class="img-responsive" />
					</figure>
				</div>
				<div class="col-md-4 wthree_latest_albums_grid_left">
					<figure class="effect-julia">
						<img src="images/13.jpg" alt=" " class="img-responsive" />	
					</figure>
				</div>
				<div class="col-md-4 wthree_latest_albums_grid_left">
					<figure class="effect-julia">
						<img src="images/15.jpg" alt=" " class="img-responsive" />	
					</figure>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //latest-albums -->
<!-- footer -->
<?php include 'footer.php'; ?>
<!-- //footer -->
<!-- copy-right -->
<!-- //copy-right -->
<!-- flexisel -->
	<script type="text/javascript">
			$(window).load(function() {
				$("#flexiselDemo1").flexisel({
					visibleItems: 3,
					animationSpeed: 1000,
					autoPlay: false,
					autoPlaySpeed: 3000,    		
					pauseOnHover: true,
					enableResponsiveBreakpoints: true,
					responsiveBreakpoints: { 
						portrait: { 
							changePoint:480,
							visibleItems: 1
						}, 
						landscape: { 
							changePoint:640,
							visibleItems:2
						},
						tablet: { 
							changePoint:768,
							visibleItems: 2
						}
					}
				});
				
			});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
<!-- //flexisel -->
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
</body>
</html>