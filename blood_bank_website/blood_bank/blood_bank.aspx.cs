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

        }

        protected void b_up_fun(object sender,EventArgs e)
        {
            Blood_bank_service_client.Iblood_bankClient iblood_BankClient = new Blood_bank_service_client.Iblood_bankClient();
            string ans = iblood_BankClient.b_bk_up(b_up_cat.SelectedIndex.ToString(), DateTime.Parse(b_up_lup.Value));
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