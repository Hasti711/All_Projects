using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class donor_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["u_email"] != null)
            {
                Donor_service_client.IdonorClient client = new Donor_service_client.IdonorClient();
                Donor_service_client.ReturnDProfile returnDp = new Donor_service_client.ReturnDProfile();
                returnDp = client.ReturnD(Session["u_email"].ToString());
                DateTime d = Convert.ToDateTime(returnDp.d1);
                d_dt.Value = d.ToString();
            }
        }

        protected void d_f_fun(object sender,EventArgs e)
        {
            DateTime d = Convert.ToDateTime(d_dt.Value);
            Donor_service_client.IdonorClient client = new Donor_service_client.IdonorClient();
            string ans = client.donor_user(d,d_b_bk.Value,Session["u_email"].ToString());
            if(ans == "index.aspx")
            {
                Response.Redirect(ans);
            }
            else
            {
                d_f_lb.Text = ans;
            }
        }
    }
}