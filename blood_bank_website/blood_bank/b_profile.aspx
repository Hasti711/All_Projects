<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="b_profile.aspx.cs" Inherits="blood_bank.b_profile" %>

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
  <div class="page-section" runat="server" id="b_pr_div">
    <div class="container">
      <h1 class="text-center wow fadeInUp">Your Profile</h1>

      <form id="b_pr_form" runat="server" class="main-form">
        <div class="row mt-5 ">
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
            <input type="text" runat="server" id="b_pr_nm" class="form-control" placeholder="Blood Bank name">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" runat="server" id="b_pr_em" class="form-control" placeholder="Email">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
            <input type="datetime-local" runat="server" id="b_pr_dnt" class="form-control">
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
            <select name="Category" runat="server" id="Pr_Category" class="custom-select">
              <option value="Government">Government</option>
              <option value="Charitable Trust">Charitable Trust</option>
            </select>
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <input type="text" runat="server" id="b_pr_pn" class="form-control" placeholder="Phone Number">
          </div>
          <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
            <textarea name="message" runat="server" id="b_pr_add" class="form-control" rows="6" placeholder="Enter Address"></textarea>
          </div>
          <div class="col-12 col-sm-6 py-2 wow fadeInRight">
            <input type="text" runat="server" id="b_pr_city" class="form-control" placeholder="City">
          </div>
        </div>

        <button type="submit" runat="server" id="b_pr_btn" onserverclick="b_pr_fun" class="btn btn-primary mt-3 wow zoomIn">Edit Profile</button>
      </form>
    </div>
  </div> <!-- .page-section --><% } %>
    <asp:Label ID="b_pr_lb" runat="server" /> 
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:100%;height:430px;"></iframe>
</body>
</html>
