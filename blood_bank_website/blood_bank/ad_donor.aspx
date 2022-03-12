<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_donor.aspx.cs" Inherits="blood_bank.ad_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Donor</title>
</head>
<body>
    <a href="ad_req.aspx" style="margin-left:80px;">Home</a>
    <a href="ad_b_bk.aspx" style="margin-left:113px;">Blood Bank List</a>
    <div runat="server" id="d_div"></div>
    <asp:Label ID="d_lb" runat="server" />
</body>
</html>
