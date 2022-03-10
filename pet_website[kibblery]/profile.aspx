<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="project.profile" %>

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
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all"/>
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
<iframe src="header.aspx" scrolling="no" style="border:none; width:100%; height:470px;"></iframe>
    <h3 class="agileits-title">Kibblery</h3>

	<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3 class="agileits-title">Your Profile</h3>
			<div class="contact-agileinfo">
				<div class="col-md-7 contact-right">
					<form id="form1" runat="server">
						<input type="text" name="Name" id="nm" placeholder="Name" required="" runat="server" />
						<input type="text" class="email" id="email" name="email" placeholder="Email" runat="server" required="" />
						<input type="text" id="pnum" name="pnum" placholder="Phone Number" runat="server" />
						<input type="text" name="ucity" id="ucity" placeholder="City" runat="server" required="" />
						<textarea name="Address" id="Address" placeholder="Address" runat="server" required=""></textarea>
						<a href ="seller_pet.aspx" id="s1" runat="server" />
						<input type="submit" id="user_profile" value="EDIT PROFILE" onserverclick="userprofile" runat="server"/>
					</form>
				</div>
				<div class="col-md-5 contact-left">
					<div class="address">
						<h5>Address:</h5>
						<p><i class="glyphicon glyphicon-home"></i> 333 Broome St New York, NY 10002, </p>
					</div>
					<div class="address address-mdl">
						<h5>Phones:</h5>
						<p><i class="glyphicon glyphicon-earphone"></i> +1 999 888 777</p>
						<p><i class="glyphicon glyphicon-phone"></i> +11 222 333</p>
					</div>
					<div class="address">
						<h5>Email:</h5>
						<p><i class="glyphicon glyphicon-envelope"></i> <a href="mailto:info@example.com">mail@example.com</a></p>
					</div>
					<div class="address" runat="server" id="sl1_div">
						<h5>Number of Pet You Sold :- </h5>
						<p runat="server" id ="sl1"><i class="glyphicon glyphicon-chevron-right"></i></p>
					</div>
					<div class="address" runat="server" id="sl2_div">
						<h5>Number of Product You Bought :- </h5>
						<p runat="server" id="sl2"><i class="glyphicon glyphicon-chevron-right"></i></p>
					</div>
				</div>
				<div class="clearfix"></div>
			    
			</div>
		</div>
		<asp:Label ID="Label1" Text="" runat="server"></asp:Label>
	</div>
	
	<!-- //contact -->
	<!-- w3-agilesale -->
	<!-- //w3-agilesale -->
	<iframe src="footer.aspx" scrolling="no" style="width:100%; height:600px;"></iframe>
	<!-- subscribe -->
	<!-- //subscribe -->

	<!-- copy rights start here -->
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