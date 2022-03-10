using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_SDP
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout_fun(object sender,EventArgs e)
        {
            Session.Remove("u_email");
            Session.Remove("u_identity");
            Session.Remove("x");
            Session.Remove("temp");
            Session.Remove("vote");
            Response.Redirect("index.aspx");
        }
    }
}