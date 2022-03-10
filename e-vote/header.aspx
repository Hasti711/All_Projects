<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="header.aspx.cs" Inherits="Project_SDP.header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-voting System</title>
<!-- for-mobile-apps -->
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
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!---strat-slider---->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!---//-slider---->
</head>
<body>
    <form id="form1" runat="server">
                <!-- header -->
	<div class="header_bg">
		<div class="container">
			<!-----start-header----->
			<div class="header">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="index.aspx" target="_top">Home</a></li>
							<%
                                if (Session["vote"] == null)
                                {
                                    if (Session["u_identity"] == null || int.Parse(Session["u_identity"].ToString()) == 1)
                                    {
							%>
							<li><a href="all_candidate.aspx" target="_top">Candidates</a></li><%} %>
							<li><a href="vote1.aspx" target="_top">Vote</a></li>
							<% }
                                else
                                { %>
							<li><a href="results.aspx" target="_top">Results</a></li>
							<%} %>
							<li><a href="profile.aspx" target="_top">Profile</a></li>
							<li><a href="about.aspx" target="_top">About</a></li>
							<%
							if(Session["u_email"] == null)
							{
							%>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Login<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="party">
											<ul class="multi-column-dropdown">
												<li><a href="voter.aspx" target="_top">Voter</a></li>
												<li class="divider"></li>
												<li><a href="candidate.aspx" target="_top">Candidate</a></li>
											</ul>
										</div>
									</div>
								</ul>
							</li> <%
							}
							else
							{
							%>
							<li><a href="logout.aspx" target="_top">Log Out</a></li><%
							}
							%>
							<li><a href="contact.aspx" target="_top">Contact Us</a></li>
							<li><a href="delete_req.aspx" target="_top">Delete</a></li>
						</ul>
					</div><!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
	<div class="header_bottom">
	</div>
<!-- //end-header -->
		<!-- banner1 -->
	<div class="banner1">
		<div class="container">
			<div class="banner1-info">
			</div>
		</div>
	</div>
<!-- //banner1 -->
    </form>
			<!-- scroll_top_btn -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
	    <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
        </script>
		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		<!--end scroll_top_btn -->
<!-- for bootstrap working -->
	 <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
</body>
</html>
