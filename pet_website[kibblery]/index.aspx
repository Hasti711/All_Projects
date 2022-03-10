<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="project.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Kibblery</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Pets Care Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="images/petshop.png" rel="icon" />
	<!-- Custom Theme files -->
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all"/>
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<!-- easy-responsive-tabs -->

	<link href="css/style.css" type="text/css" rel="stylesheet" media="all"/>
	<link href="css/font-awesome.css" rel="stylesheet"/>
	<!-- font-awesome icons -->
	<!-- //Custom Theme files -->
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Limelight" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=Junge" rel="stylesheet"/>
	<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
		  rel='stylesheet' type='text/css'/>
	<!-- //web-fonts -->

</head>

<body style="overflow:auto;">
	<!-- banner -->
	<div class="agileits-banner">
		<div class="bnr-agileinfo">
			<div class="banner-top w3layouts">
				<div class="container">
					<ul class="agile_top_section">
						<li>
							<p> Kibblery</p>
						</li>
						<li>
							<p><span class="glyphicon glyphicon-earphone"></span> +11 999 8888 7777 </p>
						</li>
						<li><a class="sign" id="userentry" href="#" runat="server" target="_top"><i class="fa fa-sign-in" aria-hidden="true"></i></a>
							<a class="sign" id="usercart" href="user_cart.aspx" runat="server" target="_top"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
							<a class="sign" id="userprofile" href="profile.aspx" runat="server" target="_top"><i class="fa fa-user" aria-hidden="true"></i></a>
						</li>
					</ul>
				</div>
			</div>

			<div class="banner-w3text w3layouts">
				<p class="w3_text"></p>
				<h3 class="w3ls_agile">Dog Sell & Care </h3>

				<h2>Kibblery</h2>
			</div>
			<!-- navigation -->
			<div class="top-nav w3-agiletop">
				<div class="agile_inner_nav_w3ls">
					<div class="navbar-header w3llogo">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a href="index.aspx">Kibblery</a></h1>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<div class="w3menu navbar-left" style="margin-left:10em;">
							<ul class="nav navbar">
								<li><a href="index.aspx">Home</a></li>
								<li><a href="about.aspx">About</a></li>
								<li><a href="gallery.aspx">Gallery</a></li>
								<li><a href="pet.aspx">Pet</a></li>
								<li>
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-letters="Pages">Products</span><span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="food.aspx">Food</a></li>
										<li><a href="toy.aspx">Toys</a></li>
										<li><a href="health.aspx">Health</a></li>
										<li><a href="accessories.aspx">Accessories</a></li>
									</ul>
								</li>
								<li><a href="contact.aspx">Contact</a></li>
							</ul>
						</div>
						<div class="w3ls-bnr-icons social-icon navbar-right">
							<a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
							<a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!-- //navigation -->
		</div>
	</div>
	<!-- //banner -->
	<!-- welcome -->
	<div class="welcome agileits">
		<div class="container">
			<div class="welcome-w3lsrow">
				<div class="col-md-5 col-sm-5 w3welcome-left">
					<div class="w3welcome-text">
						<h5 class="w3l-subtitle">Who We Are</h5>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium dapibus
							efficitur in, auctor eget elit. Lorem ipsum dolor sit amet
						</p>
						<a href="single.html" class="button button-isi"><span>Read More</span><i class="icon glyphicon glyphicon-arrow-right"></i></a>
					</div>
				</div>
				<div class="col-md-7 col-sm-7 w3welcome-img">

				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="welcome-w3lsrow2">
				<div class="col-sm-3 team-grid">
					<div class="flip-container">
						<div class="flipper">
							<div class="front">
								<img src="images/img2.jpg" alt="" />
							</div>
							<div class="back">
								<h4>Peter Parker</h4>
								<p>Pet Lover</p>
								<div class="w3l-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 team-grid">
					<div class="flip-container">
						<div class="flipper">
							<div class="front">
								<img src="images/img3.jpg" alt="" />
							</div>
							<div class="back">
								<h4>Steven Wilson</h4>
								<p>Pet Lover</p>
								<div class="w3l-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 team-grid">
					<div class="flip-container">
						<div class="flipper">
							<div class="front">
								<img src="images/img4.jpg" alt="" />
							</div>
							<div class="back">
								<h4>Johan Botha</h4>
								<p>Pet Lover</p>
								<div class="w3l-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 team-grid">
					<div class="flip-container">
						<div class="flipper">
							<div class="front">
								<img src="images/img5.jpg" alt="" />
							</div>
							<div class="back">
								<h4>Mary Jane</h4>
								<p>Pet Lover</p>
								<div class="w3l-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //welcome -->
	<!-- /services -->
	<div class="agile_secives " id="services">
		<div class="container">
			<h3 class="agileits-title two">What we Do</h3>
			<div class="markets-grids">
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-eye" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Dog Walking</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat..</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-ambulance" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Pet Grooming</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat..</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-medkit" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Pet Sitting</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat..</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-flask" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Pet Daycare</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat..</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-line-chart" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Veterinary Help</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat..</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-clock-o" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<h5>Visiting Hours</h5>
							<p>Phasellus dapibus felis elit, sed accumsan arcu gravida vitae. Nullam aliquam erat..</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- about -->
	<div class="services">
		<div class="container">
			<h3 class="agileits-title">Need More Services?</h3>
			<div class="top_tabs_agile">
				<div id="horizontalTab" class="top_tabs_agile">
					<ul class="resp-tabs-list">
						<li>
							<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>Dog Health Care
						</li>
						<li>
							<i class="fa fa-random" aria-hidden="true"></i> Pet Vaccinations
						</li>
						<li>
							<i class="fa fa-cogs" aria-hidden="true"></i> Support Adoption
						</li>
						<li>
							<i class="fa fa-shield" aria-hidden="true"></i>Pet Barber Service
						</li>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab1">
							<div class="services-right-agileits">
								<h4>Dog Health Care</h4>
								<p class="para-agileits-w3layouts">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis suscipit et dui ut cursus. Ut tortor nisi, congue quis
									orci at, posuere mattis est. Nunc sollicitudin nisi lorem, eget aliquet leo scelerisque eu. Cras placerat, ligula
									nec bibendum aliquam, nibh massa venenatis leo, at convallis sem est a sapien.consectetur adipiscing elit
								</p>
								<a href="single.html" class="button button-isi"><span>Read More </span><i class="icon glyphicon glyphicon-arrow-right"></i></a>
							</div>
						</div>

						<div class="tab2">
							<div class="services-right-agileits bar-grids bargrids-left">
								<h4>Pet Vaccinations </h4>
								<h6>Vaccination 1 <span> 80% </span></h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped active" style="width: 80%">
									</div>
								</div>
								<h6>Vaccination 2 <span> 70% </span></h6>
								<div class="progress  w3-agile">
									<div class="progress-bar progress-bar-striped active" style="width: 70%">
									</div>
								</div>
								<h6>Vaccination 3<span>90% </span></h6>
								<div class="progress  w3-agile">
									<div class="progress-bar progress-bar-striped active" style="width: 90%">
									</div>
								</div>
								<h6>Vaccination 4<span> 75% </span></h6>
								<div class="progress  w3-agile prgs-w3agile-last">
									<div class="progress-bar progress-bar-striped active" style="width: 75%">
									</div>
								</div>
							</div>

						</div>
						<div class="tab3">
							<div class="services-right-agileits img-top">
								<h4>Support Adoption</h4>
								<p class="para-agileits-w3layouts">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis suscipit et dui ut cursus. Ut tortor nisi, congue quis
									orci at, posuere mattis est. Nunc sollicitudin nisi lorem, eget aliquet leo scelerisque eu. Cras placerat, ligula
									nec bibendum aliquam, nibh massa venenatis leo, at convallis sem est a sapien.consectetur adipiscing elit
								</p>
								<a href="single.html" class="button button-isi"><span>Read More </span> <i class="icon glyphicon glyphicon-arrow-right"></i></a>
							</div>
						</div>
						<div class="tab4">
							<div class="services-right-agileits">
								<h4>Pet Barber Service</h4>
								<p class="para-agileits-w3layouts">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis suscipit et dui ut cursus. Ut tortor nisi, congue quis
									orci at, posuere mattis est. Nunc sollicitudin nisi lorem, eget aliquet leo scelerisque eu. Cras placerat, ligula
									nec bibendum aliquam, nibh massa venenatis leo, at convallis sem est a sapien.consectetur adipiscing elit
								</p>
								<a href="single.html" class="button button-isi"><span>Read More </span> <i class="icon glyphicon glyphicon-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<iframe src="footer.aspx" scrolling="no" style="width:100%; height:600px;"></iframe>
	<!-- //services -->
	<!-- w3-agilesale -->
	<!-- //w3-agilesale -->
	<!-- subscribe -->
	<!-- //subscribe -->
	<!-- copy rights start here -->
	<!-- text-effect -->
	<script type="text/javascript" src="js/jquery.transit.js"></script>
	<script type="text/javascript" src="js/jquery.textFx.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('.w3ls_agile').textFx({
				type: 'fadeIn',
				iChar: 100,
				iAnim: 1000
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('.w3_text').textFx({
				type: 'fadeIn',
				iChar: 100,
				iAnim: 1000
			});
		});
	</script>

	<!-- //copy right end here -->
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true, // 100% fit in a container
                closed: 'accordion', // Start closed if in accordion view
                activate: function (event) { // Callback function if tab is switched
                    var $tab = $(this);
                    var $info = $('#tabInfo');
                    var $name = $('span', $info);
                    $name.text($tab.text());
                    $info.show();
                }
            });
            $('#verticalTab').easyResponsiveTabs({
                type: 'vertical',
                width: 'auto',
                fit: true
            });
        });
    </script>
	<!-- script for responsive tabs -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear'
			};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
    </script>
	<!-- //smooth-scrolling-of-move-up -->
	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>
</body>

</html>