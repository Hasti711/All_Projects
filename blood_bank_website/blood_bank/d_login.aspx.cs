using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void d_l_fun(object sender,EventArgs e)
        {
            int temp1 = 0;
            bool b1 = int.TryParse(d_p_l.Value, out temp1);
            Donor_service_client.IdonorClient idonorClient = new Donor_service_client.IdonorClient();
            string ans = idonorClient.d_lg(d_em_l.Value, temp1);
            if(ans == "index.aspx")
            {
                Session["u_email"] = d_em_l.Value;
                Session["update"] = "donor";
                Response.Redirect(ans);
            }
            else
            {
                d_l_lb.Text = ans;
                d_em_l.Value = "";
                d_p_l.Value = "";
            }
        }
    }
}