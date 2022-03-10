<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="footer.aspx.cs" Inherits="project.footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</head>
<body>
    <div class="w3-agilesale welcome">
        <div class="container">
            <h3 class="agileits-title two">Pet Adoption. Be Part of Something <span>Beautiful!</span></h3>
            <a href="contact.aspx" class="button button-isi" target="_top"><span>Contact Us </span><i class="icon glyphicon glyphicon-arrow-right"></i></a>
        </div>
    </div>
    <div class="subscribe wthree-sub">
        <div class="container">
            <h4>Subscribe Now</h4>
    <form id="form1" target="_top" runat="server">
        <input type="email" id="email" name="email" runat="server" placeholder="Enter your Email..." required="" />
                <input type="submit" id="sub" runat="server" onserverclick="sub_click"/>
                <div class="clearfix"></div>
    </form>
            <div class="w3lsfoter-icons social-icon">
                <a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
                <a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
                <a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
                <a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
            </div>
        </div>
    </div>
    <asp:Label runat="server" ID="l1" />
    <asp:Label runat="server" ID="l2" />
    </body>
</html>
