<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="Project_SDP.admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
    <style>
a:link, a:visited {
  background-color: #808080;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: #484848;
}
        </style>
</head>
<body style="margin:0;">
     <form runat="server" style="background-color:#202020;">
    <a href="ad_election.aspx" runat="server" style="margin-left:113px;" id="req">Election</a>
    <a href="ad_req.aspx" runat="server" style="margin-left:80px;">Request</a>
    <a href="ad_del_req.aspx" style="margin-left:80px;" >Delete Account Request</a>
    <a href="ad_result.aspx" style="margin-left:80px;" >Result</a>
        <asp:Button ID="ad_logout" runat="server" style="margin-left:400px;padding: 14px 25px;display: inline-block;color: white;background-color: #808080;" OnClick="ad_logout_Click" Text="Logout" />
    </form>
    <table style="margin-left:173px;border:1px solid;background-color:white;width:1150px;">
        <th>
            Name
        </th>
        <th style="padding-left:80px;">
            Email
        </th>
        <th style="padding-left:80px;">
            Phone Number
        </th>
        <th style="padding-left:25px;">
            Pin Code
        </th>
        <th style="padding-left:55px;">
            City
        </th>
        <th style="padding-left:95px;">
            Picture
        </th>
        <th style="padding-left:195px;">
            Address
        </th>
        <th style="padding-left:120px;">
            Voter Id
        </th>
    </table>
    <div id="ad_can_view" runat="server" style="margin-left:170px;width:1150px;margin-top:0px;background-color:white;"></div>
     <asp:Label ID="ad_can_lb" runat="server" />
</body>
</html>
