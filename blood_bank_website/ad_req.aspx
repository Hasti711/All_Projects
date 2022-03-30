<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_req.aspx.cs" Inherits="blood_bank.ad_req" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Request</title>
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
    <form id="ad_req_form" runat="server">
    <div style="background-color:#808080;">
    <a href="ad_b_bk.aspx" style="margin-left:113px;">Blood Bank List</a>
    <a href="ad_donor.aspx" style="margin-left:80px;">Donor List</a>
    <asp:Button runat="server" ID="ad_logout_btn" OnClick="ad_logout_fun" style="margin-left:80px;display: inline-block;width:100px;height:46px;border:0;cursor:pointer;color: black;background-color: white;" Text="Log Out"/>
    </div>
    <br /><br />
    <asp:Label ID="ad_req_lb" runat="server" style="margin-top:20px;margin-left:113px;" />
   <div runat="server" id="ad_req_div"></div>
    <asp:Button runat="server" ID="ad_aprv_btn" style="margin-left:173px;" Autopostback="true" Visible="false" OnClick="ad_aprv_fun" Text="Aprove" />
   </form>
</body>
</html>
