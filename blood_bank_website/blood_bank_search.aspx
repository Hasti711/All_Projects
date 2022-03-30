<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blood_bank_search.aspx.cs" Inherits="blood_bank.blood_bank_search" %>

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
    <%
        if(Session["u_email"] == null)
        {%>
            Please Register
        <%}
            else
            { 
    %>
    <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Search Blood Availability</h1>

      <form runat="server" id="b_s_form" class="main-form">
        <div class="row mt-5 ">
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <input type="text" runat="server" class="form-control" placeholder="State" disabled="disabled">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <input type="text" runat="server" id="b_s_ct" class="form-control" placeholder="City" disabled="disabled">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <input type="text" runat="server" id="b_s_bgrp" class="form-control" placeholder="Blood Group" disabled="disabled">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <input type="text" runat="server" id="b_s_blood" class="form-control" placeholder="Whole Blood" disabled="disabled">
          </div>
        </div>
      </form>
    </div>
  </div> <!-- .page-section -->
    <asp:Label ID="b_s_lb" runat="server" />
    <table runat="server" id="b_s_tbl">
        <tr>
            <th>
                Blood Bank Name
            </th>
            <th>
                Category
            </th>
            <th>
                Last Updated on
            </th>
            <th>
                Address
            </th>
            <th>
                State
            </th>
            <th>
                City
            </th>
            <th>
                Phone Number
            </th>
            <th>
                Email
            </th>
        </tr>
        <tr runat="server" id="b_s_r1"></tr>
        <tr runat="server" id="b_s_r2"></tr>
        <tr runat="server" id="b_s_r3"></tr>
    </table><%} %>
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:100%;height:430px;"></iframe>
</body>
</html>
