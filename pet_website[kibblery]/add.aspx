<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="project.add_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Products :-<br />
            <br />
            <br />
            Product Name :-<asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
            <br />
            <br />
            Product Type :-
            <asp:TextBox ID="TextBox2" runat="server" required=""></asp:TextBox>
            <br />
            <br />
            Product Brand :-<asp:TextBox ID="TextBox3" runat="server" required=""></asp:TextBox>
            <br />
            <br />
            Product Quantity :-<asp:TextBox ID="TextBox4" runat="server" required=""></asp:TextBox>
            <br />
            <br />
            Product Picture:-
            <asp:TextBox ID="TextBox5" runat="server" required=""></asp:TextBox>
            <br />
            <br />
            Product Price:-<asp:TextBox ID="TextBox6" runat="server" required="" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
            <br />
            <br />
            <a href="edit.aspx">Edit Products</a><br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Log Out" />
            <br />
        </div>
    </form>
</body>
</html>
