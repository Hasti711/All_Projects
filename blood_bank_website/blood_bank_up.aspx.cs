using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class b_bk_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_email"] != null)
            {
                Blood_bank_service_client.Iblood_bankClient iblood_BankClient = new Blood_bank_service_client.Iblood_bankClient();
                Blood_bank_service_client.ReturnProfile profile = new Blood_bank_service_client.ReturnProfile();
                profile = iblood_BankClient.GetProfileSome(Session["u_email"].ToString());
                DateTime d = profile.dt5;
                b_up_lup.Value = d.Date.ToString() + d.TimeOfDay.ToString();
                b_up_bgrp.Value = profile.s3.ToString();
                if (int.Parse(profile.s2.ToString()) == 1)
                {
                    b_up_cat.SelectedIndex = 1;
                }
                else
                {
                    b_up_cat.SelectedIndex = 0;
                }
            }
        }

        protected void b_up_fun(object sender,EventArgs e)
        {
            DateTime d = Convert.ToDateTime(b_up_lup.Value);
            Blood_bank_service_client.Iblood_bankClient iblood_BankClient = new Blood_bank_service_client.Iblood_bankClient();
            string ans = iblood_BankClient.b_bk_up(b_up_cat.SelectedIndex.ToString(),b_up_bgrp.Value, d);
            if (ans == "index.aspx")
            {
                Response.Redirect(ans);
            }
            else
            {
                b_up_lb.Text = ans;
            }
        }
    }
}