using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["request"] == null)
            {
                d_r_lb.Text = "";
            }
            else if (Session["request"].ToString() == d_r_em.Value)
            {
                d_r_lb.Text = "Your Request is going on...";
                d_r_div.Visible = false;
            }
        }

        protected void d_r_fun(object sender,EventArgs e)
        {
            DateTime d1 = Convert.ToDateTime(d_r_dob.Value);
            DateTime d2 = Convert.ToDateTime(d_r_tdt.Value);
            int temp1 = 0,temp2 = 0,temp3 = 0,temp4 = 0;
            bool b1 = int.TryParse(d_r_phn.Value, out temp1);
            bool b2 = int.TryParse(d_r_pin.Value, out temp2);
            bool b3 = int.TryParse(d_r_gdno.Value, out temp3);
            bool b4 = int.TryParse(d_r_p.Value, out temp4);
            Donor_service_client.IdonorClient idonorClient = new Donor_service_client.IdonorClient();
            string ans = idonorClient.d_reg(d_r_nm.Value,d_r_g.Value,d1,temp1,d_r_em.Value,d_r_add.Value,d2,d_r_st.Value,d_r_ct.Value,temp2,"none",d_b_bgrp.Value,d_r_gdoc.SelectedIndex.ToString(),temp3,temp4);
            if (ans == "index.aspx")
            {
                Session["u_email"] = d_r_em.Value;
                Session["request"] = d_r_em.Value;
                Session["update"] = "donor";
                Response.Redirect(ans);
            }
            else
            {
                d_r_lb.Text = ans;
            }
        }
    }
}