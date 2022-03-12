<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="blood_bank.login" %>

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
    <style>
a:link, a:visited {
  background-color: #04AA6D;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: #2D3B38;
}
        </style>
</head>
<body>
    <iframe src="header.aspx" scrolling="no" style="border:none; width:100%;height:550px;"></iframe>
    <a href="b_login.aspx" style="margin-left:173px;">Blood Bank Log In</a>
    <a href="d_login.aspx" style="margin-left:95px;">Donor Log In</a>
    <br /><br /><h3 style="margin-left:173px;">Not Register Yet ?</h3>
    <a href="b_register.aspx" style="margin-left:173px;">Blood Bank Register</a>
    <a href="d_register.aspx" style="margin-left:80px;">Donor Register</a><br /><br />
    <iframe src="footer.aspx" scrolling="no" style="border:none; width:100%;height:430px;"></iframe>
</body>
</html>
