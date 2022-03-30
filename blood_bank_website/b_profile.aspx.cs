using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class b_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["request"].ToString() == b_pr_em.Value)
            {
                b_pr_lb.Text = "Your Request is going on...";
                b_pr_div.Visible = false;
            }
            else
            {
                Blood_bank_service_client.ReturnProfile profile = new Blood_bank_service_client.ReturnProfile();
                Blood_bank_service_client.Iblood_bankClient client = new Blood_bank_service_client.Iblood_bankClient();
                profile = client.GetReturnProfile(Session["u_email"].ToString());
                b_pr_nm.Value = profile.s1.ToString();
                b_pr_st.Value = profile.s3.ToString();
                if(int.Parse(profile.s2.ToString()) == 1)
                {
                    Pr_Category.SelectedIndex = 1;
                }
                else
                {
                    Pr_Category.SelectedIndex = 0;
                }
                b_pr_em.Value = profile.s5.ToString();
                DateTime d = profile.dt5;
                b_pr_dnt.Value= d.Date.ToString() + d.TimeOfDay.ToString();
                b_pr_pn.Value = profile.i1.ToString();
                b_pr_add.Value = profile.s3.ToString();
                b_pr_city.Value = profile.s4.ToString();
            }
        }

        protected void b_pr_fun(object sender,EventArgs e)
        {
            DateTime d1 = Convert.ToDateTime(b_pr_dnt.Value);
            int temp1 = 0;
            bool b1 = int.TryParse(b_pr_pn.Value, out temp1);
            Blood_bank_service_client.Iblood_bankClient iblood_BankClient = new Blood_bank_service_client.Iblood_bankClient();
            string ans = iblood_BankClient.b_bk_p_up(b_pr_nm.Value, Pr_Category.SelectedIndex.ToString(), d1, b_pr_add.Value,b_pr_st.Value, b_pr_city.Value, temp1, b_pr_em.Value);
            if (ans == "index.aspx")
            {
                Session["u_email"] = b_pr_em.Value;
                Session["update"] = "blood_bk";
                Session["request"] = b_pr_em.Value;
                Response.Redirect(ans);
            }
            else
            {
                b_pr_lb.Text = ans;
            }
        }
    }
}