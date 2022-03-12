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
            if(Session["update"] != null)
            {
                b_pr_lb.Text = "Your Request is going on...";
                b_pr_div.Visible = false;
            }
        }

        protected void b_pr_fun(object sender,EventArgs e)
        {
            DateTime d1 = Convert.ToDateTime(b_pr_dnt.Value);
            int temp1 = 0;
            bool b1 = int.TryParse(b_pr_pn.Value, out temp1);
            Blood_bank_service_client.Iblood_bankClient iblood_BankClient = new Blood_bank_service_client.Iblood_bankClient();
            string ans = iblood_BankClient.b_bk_p_up(b_pr_nm.Value, Pr_Category.SelectedIndex.ToString(), d1, b_pr_add.Value, b_pr_city.Value, temp1, b_pr_em.Value);
            if (ans == "index.aspx")
            {
                Session["u_email"] = b_pr_em.Value;
                Session["update"] = "blood_bk";
                Response.Redirect(ans);
            }
            else
            {
                b_pr_lb.Text = ans;
            }
        }
    }
}