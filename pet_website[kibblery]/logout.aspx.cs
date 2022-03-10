using System;

namespace project
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("email");
            Response.Redirect("index.aspx");
        }
    }
}