<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_b_bk.aspx.cs" Inherits="blood_bank.ad_b_bk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Blood Bank</title>
</head>
<body>
    <a href="ad_req.aspx" style="margin-left:113px;">Home</a>
    <a href="ad_donor.aspx" style="margin-left:80px;">Donor List</a>
    <div runat="server" id="b_bk_div"></div>
    <asp:Label ID="ad_bbk_lb" runat="server" />
</body>
</html>
