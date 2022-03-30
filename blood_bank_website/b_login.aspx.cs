using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class b_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b_l_fun(object sender,EventArgs e)
        {
            int temp1 = 0;
            bool b1 = int.TryParse(b_p_l.Value, out temp1);
            Blood_bank_service_client.Iblood_bankClient iblood_BankClient = new Blood_bank_service_client.Iblood_bankClient();
            string ans = iblood_BankClient.b_bk_lg(b_em_l.Value,temp1);
            if (ans == "index.aspx")
            {
                Session["u_email"] = b_em_l.Value;
                Session["request"] = b_em_l.Value;
                Session["update1"] = "blood bank";
                Response.Redirect(ans);
            }
            else
            {
                b_l_lb.Text = ans;
                b_em_l.Value = "";
                b_p_l.Value = "";
            }
        }
    }
}