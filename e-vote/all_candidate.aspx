<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="all_candidate.aspx.cs" Inherits="Project_SDP.aal_candidate" %>

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
        <iframe src="header.aspx" scrolling="no" style="border:0px; width:100%;height:350px;"></iframe>
	<div class="contact">
		<div class="container">
			<h3>All Candidates</h3>
			<p class="nihil">Profiles of Candidates</p>
	<div class="contact-grid">
				<div class="col-md-7 contact-right">
    <%
							if(Session["u_email"] == null)
							{
							%>
					<h2>Please<a href="user_register.aspx" runat="server"> Register</a></h2>
					<%							}							else							{
							%>
					<form runat="server" id="all_can_form">
					<asp:RadioButton ID="u_ct" runat="server" Text="Your City" />
					<asp:RadioButton ID="all_ct" runat="server" Text="All Candidate" AutoPostBack="true" OnCheckedChanged="all_can_fun" />
				</form>
					<div runat="server" id="allcan_view"></div>
					<%							}
					
							%>
				</div></div></div></div>
    <asp:Label ID ="all_lb" runat="server" />
    <iframe src="footer_top.aspx" scrolling="no" style="border:none; width:100%;height:350px;"></iframe>
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:1510px;height:450px;"></iframe>
</body>
</html>
