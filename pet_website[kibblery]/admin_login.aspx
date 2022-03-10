<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="project.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Admin LogIn<br />
            <br />
            <br />
            Name :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
            <br />
            <br />
            Password :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="6" TextMode="Password" ToolTip="Enter Password" required=""></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
