<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidate.aspx.cs" Inherits="Project_SDP.cadidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-voting System</title>
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
			<h3>Candidate</h3>
			<p class="nihil">Login</p>			
	<div class="contact-grid">
		Not Register yet?
		<a href="user_register.aspx">Click To Register</a>
				<div class="col-md-7 contact-right">
	<form id="c_login" runat="server">
						<input type="text" id="Text3" runat="server" placeholder="Voter Id" required=" ">
						<input type="password" id="c_pass" runat="server" placeholder="Password" required=" ">
						<div class="clearfix"> </div>
						<input id="Submit1" runat="server" onserverclick="can_login" type="submit" value="Submit">
						<input id="Reset1" runat="server" type="reset" value="Clear">
					</form></div></div>
			</div></div>
	<asp:Label ID="l3" runat="server" />
    <!--<iframe src="footer_top.aspx" scrolling="no" style="border:none; width:100%;height:350px;"></iframe>
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:1510px;height:550px;"></iframe>-->
</body>
</html>
