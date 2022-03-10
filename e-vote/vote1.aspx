<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vote1.aspx.cs" Inherits="Project_SDP.vote1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Voting System</title>
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
    <div class="contact">
		<div class="container">
			<h3>Vote</h3>
			<p class="nihil">Citizen of Country</p>
	<div class="contact-grid">
				<div class="col-md-7 contact-right" runat="server">
					 <%  if (Session["u_email"] == null)
                        {
                        %>
                   <h2> Please <a href="user_register.aspx">Register</a></h2>
    <%} else { %>
                    <div id="vote1_div" runat="server"></div><asp:Label ID="l4" runat="server" /><%} %>
    </div></div></div></div>
</body>
</html>
