<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="header.aspx.cs" Inherits="project.header" %>

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
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all" />
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all"/>
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <link href="images/petshop.png" rel="icon" />
    <!-- font-awesome icons -->
    <!-- //Custom Theme files -->
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href="//fonts.googleapis.com/css?family=Limelight" rel="stylesheet"/>
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'/>
    <!-- //web-fonts -->
</head>
<body>
    <!-- banner -->
    <div class="agileits-banner about-w3banner">
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
                        <div class="w3menu navbar-left" style="margin-left:10em">
                            <ul class="nav navbar">
                                <li><a href="index.aspx" target="_top">Home</a></li>
                                <li><a href="about.aspx" target="_top">About</a></li>
                                <li><a href="gallery.aspx" target="_top">Gallery</a></li>
                                <li><a href="pet.aspx" target="_top">Pet</a></li>
                                <li>
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-letters="Pages">Products</span><span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="food.aspx" target="_top">Food</a></li>
                                        <li><a href="toy.aspx" target="_top">Toys</a></li>
                                        <li><a href="health.aspx" target="_top">Health</a></li>
                                        <li><a href="accessories.aspx" target="_top">Accessories</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.aspx" target="_top">Contact</a></li>
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
        <script src="js/SmoothScroll.min.js"></script>
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
