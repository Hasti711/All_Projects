using System;

namespace project
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] == null)
            {
                userentry.HRef = "signin.aspx";
                userentry.InnerText = "Sign In";
                usercart.Visible = false;
                userprofile.Visible = false;
            }
            else
            {
                userentry.HRef = "logout.aspx";
                userentry.InnerText = "Log out";
                usercart.Visible = true;
                userprofile.Visible = true;
            }
        }
    }
}