using System;

namespace blood_bank
{
    public partial class ad_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "Hasti" && int.Parse(TextBox2.Text) == 1234 || TextBox1.Text == "Snehal" && int.Parse(TextBox2.Text) == 1234)
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("ad_req.aspx");
            }
            else
            {
                Label1.Text = "Incorrect Name and/or Password";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
}