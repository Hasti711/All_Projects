using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_SDP
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == "Hasti" || TextBox1.Text == "Namrata" || TextBox1.Text == "Snehal" && TextBox2.Text == "1234")
            {
                Session["admin"] = TextBox1.Text;
                TextBox1.Text = "";
                TextBox2.Text = "";
                Response.Redirect("admin_home.aspx");
            }
            else
            {
                Label1.Text = "Please Check User or Password";
            }
        }
    }
}