<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b_login.aspx.cs" Inherits="blood_bank.b_login" %>

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
  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Let's Get Connect</h1>

      <form id="b_login_form" runat="server" class="main-form">
        <div class="row mt-5 ">
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" class="form-control" id="b_em_l" runat="server" placeholder="Email address">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="password" class="form-control" id="b_p_l" runat="server" placeholder="Password">
          </div>
        </div>
        <button type="submit" runat="server" id="b_l_btn" onserverclick="b_l_fun" class="btn btn-primary mt-3 wow zoomIn">Log In</button>
      </form>
    </div>
  </div> <!-- .page-section -->
    <asp:Label runat="server" ID="b_l_lb" />
</body>
</html>
