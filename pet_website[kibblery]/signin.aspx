<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="project.signin" %>

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
	<style>
.center {
  margin: auto;
  width: 60%;
  padding: 190px 0px;
}
</style>
</head>
<body>
    <!-- Modal1 -->
		<div class="center" style="width:400px;">
					<div class="signin-form profile" style="border:3px solid;">
						<h3 class="agileinfo_sign">Sign In</h3>
						<div class="login-form">
							<form id="f1" runat="server">
								<input type="email" id="email" runat="server" name="email" placeholder="E-mail" required=""/>
								<input type="password" id="password" runat="server" name="password" placeholder="Password" required=""/>
								<div class="tp">
									<input type="submit" id="signin1" runat="server" onserverclick="signinuser" value="Sign In"/>
								</div>
							</form>
						</div>
						<div class="login-social-grids">
							<ul>
							</ul>
						</div>
						<p><a href="signup.aspx"> Don't have an account?</a></p>
					</div>
				</div>
	<!-- //Modal1 -->
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
    <p>
								<asp:Label runat="server" ID="l1"></asp:Label>
							</p>
</body>
</html>
