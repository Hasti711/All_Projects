using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class b_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["update"] != null)
            {
                b_r_lb.Text = "Your Request is going on...";
                b_r_div.Visible = false;
            }
        }

        protected void b_r_fun(object sender,EventArgs e)
        {
            DateTime d1 = Convert.ToDateTime(b_r_dnt.Value);
            int temp1 = 0,temp2 = 0;
            bool b1 = int.TryParse(b_r_pn.Value,out temp1);
            bool b2 = int.TryParse(b_r_p.Value,out temp2);
            Blood_bank_service_client.Iblood_bankClient iblood_BankClient = new Blood_bank_service_client.Iblood_bankClient();
            string ans = iblood_BankClient.b_bk_reg(b_r_nm.Value,b_r_gdoc.SelectedIndex.ToString(), d1, b_r_add.Value, b_r_city.Value, temp1,b_r_em.Value, temp2);
            if (ans == "index.aspx")
            {
                Session["u_email"] = b_r_em.Value;
                Session["update"] = "blood_bk";
                Response.Redirect(ans);
            }
            else
            {
                b_r_lb.Text = ans;
            }
        }
    }
}