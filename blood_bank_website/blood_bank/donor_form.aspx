<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donor_form.aspx.cs" Inherits="blood_bank.donor_form" %>

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
  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Make an Appointment</h1>

      <form id="d_form" runat="server" class="main-form">
        <div class="row mt-5 ">
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <input type="datetime-local" placeholder="Tentative Date" runat="server" id="d_dt" class="form-control">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="d_b_bk" class="form-control" placeholder="Blood Bank">
          </div>
        </div>

        <button type="submit" class="btn btn-primary mt-3 wow zoomIn">Donate</button>
      </form>
    </div>
  </div> <!-- .page-section --><% } %>
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:100%;height:430px;"></iframe>
</body>
</html>
