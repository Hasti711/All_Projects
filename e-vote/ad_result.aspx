<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_result.aspx.cs" Inherits="Project_SDP.ad_result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Result</title>
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
    <div style="background-color:#202020;">
    <a href="ad_election.aspx" runat="server" style="margin-left:113px;" id="req">Election</a>
    <a href="ad_req.aspx" runat="server" style="margin-left:80px;">Request</a>
    <a href="ad_del_req.aspx" style="margin-left:80px;" >Delete Account Request</a>
    <a href="ad_result.aspx" style="margin-left:80px;" >Result</a></div>
            <br /><br /><asp:Label style="margin-left:173px;padding: 14px 25px;background-color:white;" ID="ad_win" runat="server" />
    <form runat="server" id="ad_r_form" style="margin-left:173px;background-color:white;width:1150px;">
    <asp:Button ID="re_btn" style="margin-left:400px;padding: 14px 25px;display: inline-block;color: white;background-color: #808080;" runat="server" AutoPostBack="true" OnClick="res_fun" Text="Stop Election and Show Result ?" />
   </form>
</body>
</html>
