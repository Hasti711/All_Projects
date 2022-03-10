<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_del_req.aspx.cs" Inherits="Project_SDP.ad_del_req" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Request</title>
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
        <th style="padding-left:47px;">
            City
        </th>
        <th style="padding-left:45px;">
            Picture
        </th>
        <th style="padding-left:155px;">
            Address
        </th>
        <th style="padding-left:120px;">
            Voter Id
        </th>
    </table>
    <form id="ad_del_g" runat="server" style="margin-left:173px;background-color:white;width:1150px;">
        <input type="text" id="Text1" runat="server" style="height:25px;width:115px;" placeholder="Name" required=" "/>
		<input type="text" id="email_id1" runat="server" style="height:25px;width:115px;" placeholder="Email Address" required=" "/>
		<input type="text" id="ph_no1" runat="server" style="height:25px;width:115px;" placeholder="Phone Number" required=" "/>
		<input type="text" id="Text4_1" runat="server" style="height:25px;width:115px;" placeholder="Voter Id" required=" "/>
		<input type="text" id="pincode1" runat="server" style="height:25px;width:115px;" placeholder="Pin Code" required="" />
        <textarea id="descrip1" placeholder="Add Description" value="Add Description" style="height:50px;width:150px;" runat="server" required=""></textarea>
		<input type="text" id="ass_no1_1" runat="server" style="height:25px;width:115px;" placeholder="City" required="" /><br />
		<img src="#" id="election_card_1" runat="server" required="" style="width:250px;height:150px;" /><br />
		<img src="#" id="del_cer" runat="server" required="" style="width:250px;height:150px;" /><br />
		<textarea visible="false" id="Textarea1_1" runat="server" style="height:50px;width:150px;" placeholder="Type Your Address Here...." required=" "></textarea>
		<input id="Submit1_1" runat="server" onserverclick="ad_aprv" style="margin-left:400px;padding: 14px 25px;display: inline-block;color: white;background-color: #808080;" type="submit" value="Approve"/>
    </form>
    <br /><br /><br /><asp:Label ID="ad_r_lb" runat="server" style="margin-left:173px;padding: 14px 25px;background-color:white;" />
</body>
</html>
