<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pet.aspx.cs" Inherits="project.pet" %>

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
    <h3 class="agileits-title">Kibblery Pets</h3>
    <div class="gallery" runat="server" id="pet1">
        <div class="container">
            <h3 class="agileits-title">Pets</h3>
			<form id="test" runat="server">
     <center style="margin-top:100px;"><input type="button" id="Butto1" style="background:#FF5722;color:white;border:none;width:640px;height:90px;font-size:25px;" value="Want to Sell Your Pet...?" runat="server" onserverclick="sellpet" /></center>
    <center style="margin-top:100px;"><input type="submit" id="login1" style="background:#FF5722;color:white;border:none;width:640px;height:90px;font-size:25px;" value="Please Sign Up/Login to buy pets..." runat="server" onserverclick="checkforlogin" /></center>
			</form>
			<div class="gallery-agileinfo" runat="server" id="img_div">
				<div class="clearfix"></div>
            </div>
        </div>
    </div>
	<iframe src="footer.aspx" scrolling="no" style="width:100%; height:600px;overflow:hidden;"></iframe>
</body>
</html>
