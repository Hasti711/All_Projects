<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Project_SDP.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>E-voting System</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Election Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!---strat-slider---->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!---//-slider---->
</head>
<body>
	<iframe src="header.aspx" scrolling="no" style="border:none; width:100%;height:350px;"></iframe>
    <!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Contact Us</h3>
			<p class="nihil">Vote For Real Government.</p>
			<div class="contact-grid">
				<div class="col-md-7 contact-right">
					<form id="contact_form" runat="server">
						<input type="text" id="nm1" runat="server" placeholder="Name" required=" ">
						<input type="text" id="email1" runat="server" placeholder="Email Address" required=" ">
						<input type="text" id="sub1" runat="server" placeholder="Subject" required=" ">
						<div class="clearfix"> </div>
						<textarea placeholder="Type Your Text Here...." required=" "></textarea>
						<input type="submit" id="contact1" runat="server" onserverclick="con_click" value="Submit">
						<input type="reset" value="Clear">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<asp:Label runat="server" ID="l1" />
	<div class="contact-bottom">
		<div class="container">
			<div class="contact-bottom-grids">
				<p>But I must explain to you how all this mistaken idea of denouncing 
					pleasure and praising pain was born and I will give you a complete 
					account of the system, and expound the actual teachings of the great 
					explorer of the truth, the master-builder of human happiness. 
					No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, 
					but because those who do not know how to pursue pleasure rationally 
					encounter consequences that are extremely painful.</p>
				<div class="col-md-4 contact-bottom-grid">
					<div class="dot">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					</div>
					<h4>Nirvachan Sadan , Ashoka Road , New Delhi 110001</span></h4>
				</div>
				<div class="col-md-4 contact-bottom-grid">
					<div class="dot">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					</div>
					<a href="mailto:parmarhasti711@gmail.com">info@example.com</a>
				</div>
				<div class="col-md-4 contact-bottom-grid">
					<div class="dot">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
					</div>
					<h4>+23052220,+23052221</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //contact -->
	<iframe src="footer_top.aspx" scrolling="no" style="border:none; width:100%;height:350px;"></iframe>
	<iframe src="footer.aspx" scrolling="no" style="border:none; width:100%;height:550px;"></iframe>
</body>
</html>
