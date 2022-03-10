<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pet2.aspx.cs" Inherits="project.pet2" %>

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
						<img src="#" id="img_pet2" style="width:400px;height:400px;" runat="server" />
						<input type="submit" id="buy_pet" value="BUY PET" runat="server" onserverclick="pet_click" />
					</form>
				</div>
				<div class="col-md-5 contact-left">
					<div class="address">
						<h5>Pet Name :- </h5>
						<p runat="server" id="p_nm"><i class="glyphicon glyphicon-chevron-right"></i></p>
					</div>
					<div class="address address-mdl">
						<h5>Pet Category :- </h5>
						<p runat="server" id="p_cate"><i class="glyphicon glyphicon-chevron-right"></i></p></div>
					<div class="address address-mdl">
						<h5>Pet Age :- </h5>
						<p runat="server" id="p_age"><i class="glyphicon glyphicon-chevron-right"></i></p>
					</div>
					<div class="address">
						<h5>Pet Products and Descrition :- </h5>
						<p runat="server" id="p_pro"><i class="glyphicon glyphicon-shopping-cart"></i></p>
						<p runat="server" id="p_desc"><i class="glyphicon glyphicon-envelope"></i></p>
					</div>
					<div class="address">
						<h5>Pet Price :- </h5>
						<p runat="server" id="p_price"><i class="glyphicon glyphicon-th-list"></i></p>
					</div>
					<div class="address">
						<h5>Owner :- </h5>
						<p runat="server" id="owner"><i class="glyphicon glyphicon-home"></i></p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<iframe src="footer.aspx" scrolling="no" style="width:100%; height:600px;"></iframe>
</body>
</html>