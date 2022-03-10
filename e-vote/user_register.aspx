<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_register.aspx.cs" Inherits="Project_SDP.user_register" %>

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
	<!--<iframe src="header.aspx" scrolling="no" style="border:0px; width:100%;height:550px;"></iframe>-->
    <div class="contact">
		<div class="container">
			<h3>Register</h3>
			<p class="nihil">Citizen of Country</p>			
	<div class="contact-grid">
				<div class="col-md-7 contact-right">
	<%	if (Session["update"] != null)
                        {
							%>
		<asp:Label ID="reg_lb" runat="server" Text="Your procedure for registration is going on..." />
					<%}
						else { 
						%>
	<form runat="server" id="user_reg">
						<input type="text" id="Text1" runat="server" placeholder="Name" required=" "/>
						<input type="text" id="email_id" runat="server" placeholder="Email Address" required=" "/>
						<input type="text" id="ph_no" runat="server" placeholder="Phone Number" required=" "/>
						<input type="text" id="Text4" runat="server" placeholder="Voter Id" required=" "/>
						<input type="text" id="pincode" runat="server" placeholder="Pin Code" required="" />
						<input type="radio" id="voter" runat="server" required="" />Voter
						<asp:RadioButton ID="candidate1" runat="server" OnCheckedChanged="ch_iden" AutoPostBack="true" />Candidate
						<textarea id="descrip" placeholder="Add Description" value="Add Description" runat="server" required=""></textarea>
						<input type="password" id="Text6" runat="server" placeholder="Password" required="" />
						<input type="password" id="Text7" runat="server" placeholder="Confirm Password" required="" />
						<input type="text" id="ass_no1" runat="server" placeholder="City" required="" /><br />
						<input type="file" id="election_card" runat="server" required="" /><br />
						<textarea id="Textarea1" runat="server" placeholder="Type Your Address Here...." required=" "></textarea>
						<input id="Submit1" runat="server" onserverclick="user_reg_btn" type="submit" value="Submit"/>
						<input id="Reset1" runat="server" type="reset" value="Clear"/>
		<asp:Label id="l1" runat="server"></asp:Label>
					</form>
					<%} %>
				</div></div>
			</div></div>
	<!--<iframe src="footer_top.aspx" scrolling="no" style="border:0px; width:100%;height:350px;"></iframe>
	<iframe src="footer.aspx" scrolling="no" style="border:0px; width:1510px;height:550px;"></iframe>-->
</body>
</html>
