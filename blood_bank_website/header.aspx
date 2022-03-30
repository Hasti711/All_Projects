<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="header.aspx.cs" Inherits="blood_bank.header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blood Bank System</title>
      <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  <link rel="stylesheet" href="css/maicons.css">

  <link rel="stylesheet" href="css/bootstrap.css">

  <link rel="stylesheet" href="vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="vendor/animate/animate.css">

  <link rel="stylesheet" href="css/theme.css">
</head>
<body>
    <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <div class="topbar">
      <div class="container">
        <div class="row">
          <div class="col-sm-8 text-sm">
            <div class="site-info">
              <a href="#"><span class="mai-call text-primary"></span> +00 123 4455 6666</a>
              <span class="divider">|</span>
              <a href="#"><span class="mai-mail text-primary"></span> mail@example.com</a>
            </div>
          </div>
          <div class="col-sm-4 text-right text-sm">
            <div class="social-mini-button">
              <a href="#"><span class="mai-logo-facebook-f"></span></a>
              <a href="#"><span class="mai-logo-twitter"></span></a>
              <a href="#"><span class="mai-logo-dribbble"></span></a>
              <a href="#"><span class="mai-logo-instagram"></span></a>
            </div>
          </div>
        </div> <!-- .row -->
      </div> <!-- .container -->
    </div> <!-- .topbar -->

    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="index.aspx"><span class="text-primary">Blood</span>-Bank</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupport">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.aspx" target="_top">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.aspx" target="_top">About Us</a>
            </li>
              <%
                      if(Session["update"] == null || Session["update1"] == null)
            { %>
                          <li class="nav-item">
              <a class="nav-link" href="donor_form.aspx" target="_top">Donate</a>
            </li>
            <%}
                     else if (Session["update"].ToString() == "donor" || Session["update1"].ToString() == "donor")
                    {
                    %>
            <li class="nav-item">
              <a class="nav-link" href="donor_form.aspx" target="_top">Donate</a>
            </li><% } %>
            <li class="nav-item">
                <% if (Session["update"] == null || Session["update1"] == null)
                    {%>
              <a class="nav-link" href="blood_bank_search.aspx" target="_top">Blood Bank</a>
                <%}
                    else if(Session["update"].ToString() == "donor" || Session["update1"].ToString() == "donor")
            {
                %>
                <a class="nav-link" href="blood_bank_search.aspx" target="_top">Blood Bank</a>
                <%
                    }
                    else if(Session["update"].ToString() == "blood bank" || Session["update1"].ToString() == "bloodbank")
            {%>
                <a class="nav-link" href="blood_bank_up.aspx" target="_top">Blood Bank Update</a>
            <%}
                    %>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.aspx" target="_top">Contact</a>
            </li>
            <li class="nav-item">
                <% 
                    if (Session["u_email"] == null)
                    {
                    %>
              <a class="btn btn-primary ml-lg-3" href="login.aspx" target="_top">Login / Register</a>
            <% }
                else
            { %>
                <a class="btn btn-primary ml-lg-3" href="logout.aspx" target="_top">Log Out</a>    
                <%
            }
                %>
            </li>
              <li class="nav-item">
                  <%if(Session["u_email"] == null)
{%>
	<!--<a class="nav-link" href="#"></a>-->
<%}
if (Session["update"] == null)
{ %>
    <!--<a class="nav-link" href="#"></a>-->
<%}
else if(Session["update"].ToString() == "donor")
{%>
	<a class="nav-link" href="d_profile.aspx" target="_top">Profile</a>
<%} 
else if(Session["update"].ToString() == "blood bank")
{%>
	<a class="nav-link" href="b_profile.aspx" target="_top">Profile</a>
<%}
if(Session["update1"] == null)
{%>
    <!--<a class="nav-link" href="#"></a>-->
<%}
else if(Session["update1"].ToString() == "donor")
{%>
	<a class="nav-link" href="d_profile.aspx" target="_top">Profile</a>
<%}
else if(Session["update1"].ToString() == "blood bank")
{%>
	<a class="nav-link" href="b_profile.aspx" target="_top">Profile</a>
<%}%>
              </li>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>
    <div class="page-hero bg-image overlay-dark" style="background-image: url(img/bg_image_1.jpg);">
    <div class="hero-section">
      <div class="container text-center wow zoomIn">
        <span class="subhead">Let's make your life happier</span>
        <h1 class="display-4">Healthy Living</h1>
      </div>
    </div>
  </div>
    <script src="js/jquery-3.5.1.min.js"></script>

<script src="js/bootstrap.bundle.min.js"></script>

<script src="vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="vendor/wow/wow.min.js"></script>

<script src="js/theme.js"></script>
</body>
</html>
