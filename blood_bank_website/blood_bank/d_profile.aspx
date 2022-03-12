<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="d_profile.aspx.cs" Inherits="blood_bank.profile" %>

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
    <iframe src="header.aspx" scrolling="no" style="border:none; width:100%;height:550px;"></iframe>
     <!-- .page-section -->
    <%
        if (Session["u_email"] == null)
        {
                %>
    <asp:Label runat="server" Text="Please Register" />
    <% }
        else
        {
        %>
  <div class="page-section" runat="server" id="d_pr_div">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Your Profile</h1>

      <form runat="server" id="d_pr_form" class="main-form">
        <div class="row mt-5">
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_pr_nm" class="form-control" placeholder="Donor name">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_pr_g" class="form-control" placeholder="Gender">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <input type="date" runat="server" id="d_pr_dob" class="form-control">
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <input type="text" runat="server" id="d_pr_ph" class="form-control" placeholder="Phone Number">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" runat="server" id="d_pr_em" class="form-control" placeholder="Email address">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <input type="date" runat="server" id="d_pr_tdt" class="form-control">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_pr_st" class="form-control" placeholder="State">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_pr_ct" class="form-control" placeholder="City">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_pr_b_bgrp" class="form-control" placeholder="Blood Group">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <select name="Government Document" id="d_pr_gdoc" runat="server" class="custom-select">
              <option value="aadhar">Aadhar Card</option>
              <option value="driving">Driving License</option>
              <option value="pan">PAN Card</option>
              <option value="vid">Voter ID</option>
            </select>
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_pr_gdno" class="form-control" placeholder="Government Document Number">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_pr_pin" class="form-control" placeholder="Pin Code">
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <textarea name="message" id="d_pr_add" runat="server" class="form-control" rows="6" placeholder="Enter Address"></textarea>
          </div>
        </div>

        <button type="submit" id="d_pr_btn" runat="server" onserverclick="d_pr_fun" class="btn btn-primary mt-3 wow zoomIn">Register</button>
      </form>
    </div>
  </div> <!-- .page-section -->
    <asp:Label runat="server" ID="d_pr_lb" /><% } %>
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:100%;height:430px;"></iframe>
</body>
</html>
