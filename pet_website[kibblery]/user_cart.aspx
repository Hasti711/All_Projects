<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_cart.aspx.cs" Inherits="project.user_cart" %>

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
			<h3 class="agileits-title">Kibblery Pet</h3>
			<div class="contact-agileinfo">
				<div class="col-md-7 contact-right">
					<form id="formcon" runat="server">
						<img src="#" id="img_cart" style="width:400px;height:400px;" runat="server" />
						<br /><input type="submit" id="buy_pro" value="BUY PRODUCT(s)" runat="server" onserverclick="pro_click" />
					</form>
				</div>
				<div class="col-md-5 contact-left">
					<div class="address">
						<h5>Product Name :- </h5>
						<p runat="server" id="p_nm"><i class="glyphicon glyphicon-chevron-right"></i></p>
					</div>
					<div class="address address-mdl">
						<h5>Product Type :- </h5>
						<p runat="server" id="p_type"><i class="glyphicon glyphicon-chevron-right"></i></p></div>
					<div class="address address-mdl">
						<h5>Product Brand :- </h5>
						<p runat="server" id="p_br"><i class="glyphicon glyphicon-chevron-right"></i></p>
					</div>
					<div class="address">
						<h5>Product Quantity :- </h5>
						<p runat="server" id="p_quan"><i class="glyphicon glyphicon-shopping-cart"></i>7</p>
					</div>
					<div class="address">
						<h5>Pet Price :- </h5>
						<p runat="server" id="p_price"><i class="glyphicon glyphicon-th-list"></i></p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<iframe src="footer.aspx" scrolling="no" style="width:100%; height:600px;"></iframe>
</body>
</html>