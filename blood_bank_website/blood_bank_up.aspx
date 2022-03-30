<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blood_bank_up.aspx.cs" Inherits="blood_bank.b_bk_up" %>

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
     <!-- .page-section -->
    <%
        if (Session["u_email"] == null)
        {
                %>
    <h1><asp:Label runat="server" Text="Please Register" /></h1>
    <% }
        else
        {
        %>
  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Update</h1>

      <form runat="server" id="b_up_form" class="main-form">
        <div class="row mt-5 ">
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <input type="datetime-local" runat="server" id="b_up_lup" class="form-control">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" runat="server" id="b_up_bgrp" class="form-control" placeholder="Blood Group">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <select name="Category" id="b_up_cat" runat="server" class="custom-select">
              <option value="Government">Government</option>
              <option value="Charitable Trust">Charitable Trust</option>
            </select>
          </div>
        </div>

        <button type="submit" id="b_up_btn" runat="server" onserverclick="b_up_fun" class="btn btn-primary mt-3 wow zoomIn">Update Details</button>
      </form>
    </div>
  </div> <!-- .page-section -->
    <asp:Label ID="b_up_lb" runat="server" /> <% } %>
</body>
</html>
