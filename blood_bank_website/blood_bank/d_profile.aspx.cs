using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["update"] != null)
            {
                d_pr_lb.Text = "Your Request is going on...";
                d_pr_div.Visible = false;
            }
        }

        protected void d_pr_fun(object sender,EventArgs e)
        {
            DateTime d1 = Convert.ToDateTime(d_pr_dob.Value);
            DateTime d2 = Convert.ToDateTime(d_pr_tdt.Value);
            int temp1 = 0,temp2 = 0, temp3 = 0;
            _ = int.TryParse(d_pr_ph.Value, out temp1);
            _ = int.TryParse(d_pr_pin.Value, out temp2);
            _ = int.TryParse(d_pr_gdno.Value, out temp3);
            Donor_service_client.IdonorClient idonorClient = new Donor_service_client.IdonorClient();
            string ans = idonorClient.d_p_up(d_pr_nm.Value, d_pr_g.Value, d1, temp1, d_pr_em.Value, d_pr_add.Value, d2, d_pr_st.Value, d_pr_ct.Value, temp2, d_pr_b_bgrp.Value, d_pr_gdoc.SelectedIndex.ToString(), temp3);
            if (ans == "index.aspx")
            {
                Session["u_email"] = d_pr_em.Value;
                Session["update"] = "donor";
                Response.Redirect(ans);
            }
            else
            {
                d_pr_lb.Text = ans;
            }
        }
    }
}