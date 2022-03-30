using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout_fun(object sender,EventArgs e)
        {
            Session.Remove("u_email");
            Session.Remove("update");
            Session.Remove("update1");
            Response.Redirect("index.aspx");
        }
    }
}