<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="project.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Produtcs :-<br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kibbleryConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
            <a href="add.aspx">Add Product</a>
            <br />
            <br />
            Enter Product Id :-
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Want to Update..." />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="prid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="prid" HeaderText="prid" InsertVisible="False" ReadOnly="True" SortExpression="prid" />
                    <asp:BoundField DataField="prnm" HeaderText="prnm" SortExpression="prnm" />
                    <asp:BoundField DataField="prtype" HeaderText="prtype" SortExpression="prtype" />
                    <asp:BoundField DataField="prbrand" HeaderText="prbrand" SortExpression="prbrand" />
                    <asp:BoundField DataField="prquantity" HeaderText="prquantity" SortExpression="prquantity" />
                    <asp:BoundField DataField="primg" HeaderText="primg" SortExpression="primg" />
                    <asp:BoundField DataField="prprice" HeaderText="prprice" SortExpression="prprice" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            Product Name :- <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Product Type :-
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Product Brand :-
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            Product Quantity :-
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            Product Picture :-
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            Product Price :-&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
        </div>
    </form>
</body>
</html>
