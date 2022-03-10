using System;
using System.Data.SqlClient;

namespace project
{
    public partial class add_product : System.Web.UI.Page
    {
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pnm = TextBox1.Text,ptype = TextBox2.Text,pbrand = TextBox3.Text,pquan = TextBox4.Text,pimg = TextBox5.Text,pprice = TextBox6.Text;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-QPOSU59;Initial Catalog=kibblery;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[product]
           ([prnm]
           ,[prtype]
           ,[prbrand]
           ,[prquantity]
           ,[primg]
           ,[prprice])
     VALUES
           ('"+pnm+"','"+ptype+"','"+pbrand+"','"+pquan+"','"+pimg+"','"+pprice+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            count++;
            Label1.Text = "Product is added..." + count;
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("adminid");
            Session.RemoveAll();
            Response.Redirect("admin_login.aspx");
        }
    }
}