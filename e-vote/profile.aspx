<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project_SDP.campaigns" %>

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
    <!--<iframe src="header.aspx" scrolling="no" style="border:0px; width:100%;height:700px;"></iframe>-->
		<div class="contact">
		<div class="container">
			<h3>Profile</h3>
			<p class="nihil">Your Profile</p>			
	<div class="contact-grid">
				<div class="col-md-7 contact-right">
					<%
                        if (Session["u_email"] == null)
                        {
							%>
					<h2>Please<a href="user_register.aspx" runat="server"> Register</a></h2>
					<%							}
                        else if (Session["update"] != null)
                        {
							%>
					<asp:Label ID="pr_up_lb" runat="server" Text="Your procedure for updating profile is going on..." />
					<%}
						else { 
						%>
	<form id="profile_user" runat="server">
						<input type="text" id="Text1" runat="server" placeholder="Name" required=" ">
						<input type="text" id="Text2" runat="server" placeholder="Email Address" required=" ">
						<input type="text" id="Text3" runat="server" placeholder="Phone Number" required=" ">
						<input type="text" id="Text4" runat="server" placeholder="Pincode" required=" ">
						<input type="text" id="text5" runat="server" placeholder="Assembly Number" required="" />
						<img src="#" id="pr_img" runat="server" style="height:150px;width:250px;" />
						<input type ="file" runat="server" id="pr_new_img" visible="false" />
						<input type="text" id="text6" runat="server" placeholder="Voter Id" required="" />
						<textarea id="pr_des" runat="server" placeholder="Type Your Text Here...." required=" "></textarea>
						<textarea id="Textarea1" runat="server" placeholder="Type Your Text Here...." required=" "></textarea>
						<input id="Submit1" runat="server" type="submit" value="Edit Profile" onserverclick="edit_pr">
						<input id="Submit2" runat="server" type="submit" value="Edit Profile Photo" onserverclick="edit_img">
					</form>
					<%							}
							%>
				</div></div></div></div>
	<asp:Label ID="pr_lb" runat="server" />
    <!--<iframe src="footer_top.aspx" scrolling="no" style="border:none; width:100%;height:350px;"></iframe>
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:1510px;height:550px;"></iframe>-->
</body>
</html>
