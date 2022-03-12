<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="blood_bank.contactus" %>

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
    <iframe src="header.aspx" scrolling="no" style="border:none; width:100%;height:500px;"></iframe>
     <!-- .page-section -->
  <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Contact Us</h1>

      <form runat="server" id="con_form" class="main-form">
        <div class="row mt-5 ">
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" id="nm" runat="server" class="form-control" placeholder="Full name">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" id="em" runat="server" class="form-control" placeholder="Email address">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <!--<input type="date" class="form-control">-->
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <!--<select name="departement" id="departement" class="custom-select">
              <option value="general">General Health</option>
              <option value="cardiology">Cardiology</option>
              <option value="dental">Dental</option>
              <option value="neurology">Neurology</option>
              <option value="orthopaedics">Orthopaedics</option>
            </select>-->
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <input type="text" runat="server" id="sub" class="form-control" placeholder="Subject">
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
           <br /> <textarea name="message" id="message" runat="server" class="form-control" rows="6" placeholder="Enter message"></textarea>
          </div>
        </div>

        <button type="submit" id="con_btn" runat="server" onserverclick="con_mail" class="btn btn-primary mt-3 wow zoomIn">Send Mail</button>
      </form>
    </div>
  </div> <!-- .page-section -->
    <asp:Label ID="l1" runat="server" />
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:100%;height:430px;"></iframe>
</body>
</html>
