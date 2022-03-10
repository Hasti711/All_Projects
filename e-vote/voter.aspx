<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voter.aspx.cs" Inherits="Project_SDP.voter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-voting</title>
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
</head>
<body>
    <!--<iframe src="header.aspx" scrolling="no" style="border:0px; width:100%;height:550px;"></iframe>-->
            <div class="contact">
		<div class="container">
			<h3>Voter</h3>
			<p class="nihil">Login</p>		
	<div class="contact-grid">
		Not Register yet?
		<a href="user_register.aspx">Click To Register</a>
				<div class="col-md-7 contact-right">				
	<form runat="server" id="v_login">
						<input type="text" id="Text1" runat="server" placeholder="Election Card Number" required=" "/>
						<input type="password" id="v_pass" runat="server" placeholder="password" required=" "/>
						<div class="clearfix"> </div>
						<input id="Submit1" onserverclick="voter_login" runat="server" type="submit" value="Submit"/>
						<input id="Reset1" runat="server" type="reset" value="Clear"/>
					</form></div></div>
			</div></div>
	<asp:label id="l2" runat="server" />
    <!--<iframe src="footer_top.aspx" scrolling="no" style="border:none; width:100%;height:350px;"></iframe>
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:1510px;height:550px;"></iframe>-->
</body>
</html>
