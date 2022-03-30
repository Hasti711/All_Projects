<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_donor.aspx.cs" Inherits="blood_bank.ad_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Donor</title>
        <style>
a:link, a:visited {
  background-color: white;
  color: black;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  cursor:pointer;
}
        </style>
</head>
<body style="margin:0;">
    <div style="background-color:#808080;">
    <a href="ad_req.aspx" style="margin-left:80px;">Home</a>
    <a href="ad_b_bk.aspx" style="margin-left:113px;">Blood Bank List</a>
    <div runat="server" style="background-color:white;" id="d_div"></div>
    <asp:Label ID="d_lb" runat="server" /></div>
</body>
</html>
