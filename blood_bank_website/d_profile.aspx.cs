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
            if (Session["request"].ToString() == d_pr_em.Value)
            {
                d_pr_lb.Text = "Your Request is going on...";
                d_pr_div.Visible = false;
            }
            else
            {
                Donor_service_client.IdonorClient client = new Donor_service_client.IdonorClient();
                Donor_service_client.ReturnDProfile dprofile = new Donor_service_client.ReturnDProfile();
                dprofile = client.GetDReturnProfile(Session["u_email"].ToString());
                d_pr_nm.Value = dprofile.s1.ToString();
                d_pr_g.Value = dprofile.s2.ToString();
                DateTime d1 = dprofile.d1;
                d_pr_dob.Value = d1.ToString();
                d_pr_ph.Value = dprofile.l1.ToString();
                d_pr_em.Value = dprofile.s3.ToString();
                d_pr_add.Value = dprofile.s4.ToString();
                DateTime d2 = dprofile.d2;
                d_pr_tdt.Value = d2.ToString();
                d_pr_st.Value = dprofile.s5.ToString();
                d_pr_ct.Value = dprofile.s6.ToString();
                d_pr_pin.Value = dprofile.l2.ToString();
                d_pr_b_bgrp.Value = dprofile.s8.ToString();
                d_pr_gdno.Value = dprofile.l3.ToString();
                if (int.Parse(dprofile.s9.ToString()) == 1)
                {
                    d_pr_gdoc.SelectedIndex = 1;
                }
                else if (int.Parse(dprofile.s9.ToString()) == 2)
                {
                    d_pr_gdoc.SelectedIndex = 2;
                }
                else if (int.Parse(dprofile.s9.ToString()) == 3)
                {
                    d_pr_gdoc.SelectedIndex = 3;
                }
                else
                {
                    d_pr_gdoc.SelectedIndex = 0;
                }
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
                Session["request"] = d_pr_em.Value;
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