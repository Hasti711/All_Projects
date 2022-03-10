<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_election.aspx.cs" Inherits="Project_SDP.ad_election" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Election</title>
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
        <table runat="server" id="tbl" style="margin-left:173px;border:1px solid;">
        <th>
            City
        </th>
        <th style="padding-left:80px;">
            Ward No
        </th>
    </table>
    <div id="ad_can_view" runat="server" style="margin-left:170px;margin-top:30px;"></div><br />
    <form id="election_form" runat="server" style="margin-left:173px;">
        <input type="text" id="Text1" value="" runat="server" style="height:25px;width:115px;background-color:white;" placeholder="City" required=" " visible="false"/>
		<input type="text" id="email_id1" value="" runat="server" style="height:25px;width:115px;background-color:white;" placeholder="Ward no" required=" " visible="false"/>
        <input id="Submit1_1" runat="server" onserverclick="add_elec" style="padding: 14px 25px;display: inline-block;color: white;background-color: #808080;cursor:pointer;" type="submit" value="Add New Election ?"/>
    </form>
    <br /><br /><br /><asp:Label ID="ad_r_lb" runat="server" style="margin-left:173px;padding: 14px 25px;" />
</body>
</html>
