<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b_register.aspx.cs" Inherits="blood_bank.b_register" %>

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

  <div class="page-section" runat="server" id="b_r_div">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Let's Get Connect</h1>

      <form runat="server" id="r_form" class="main-form">
        <div class="row mt-5 ">
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="b_r_nm" class="form-control" placeholder="Blood Bank name">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" runat="server" id="b_r_em" class="form-control" placeholder="Email">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <input type="datetime-local" runat="server" id="b_r_dnt" class="form-control">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <select name="Type" id="b_r_gdoc" runat="server" class="custom-select">
              <option value="Government">Government</option>
              <option value="Charitable">Charitable</option>
            </select>
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <input type="text" runat="server" id="b_r_pn" class="form-control" placeholder="Phone Number">
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <input type="password" runat="server" id="b_r_p" class="form-control" placeholder="Password">
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <input type="password" runat="server" id="Password1" class="form-control" placeholder="Confirm Password">
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <textarea name="message" runat="server" id="b_r_add" class="form-control" rows="6" placeholder="Enter Address"></textarea>
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" runat="server" id="b_r_city" class="form-control" placeholder="City">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" runat="server" id="b_r_st" class="form-control" placeholder="State">
          </div>
        </div>

        <button type="submit" runat="server" id="b_r_btn" onserverclick="b_r_fun" class="btn btn-primary mt-3 wow zoomIn">Register</button>
      </form>
    </div>
  </div> <!-- .page-section -->
    <asp:Label ID="b_r_lb" runat="server" />
</body>
</html>
