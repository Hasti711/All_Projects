using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blood_bank
{
    public partial class blood_bank_search : System.Web.UI.Page
    {
        string temp;
        protected void Page_Load(object sender, EventArgs e)
        {
            Blood_bank_service_client.Iblood_bankClient client = new Blood_bank_service_client.Iblood_bankClient();
            Blood_bank_service_client.ReturnProfile[] profile = new Blood_bank_service_client.ReturnProfile[3];
            profile = client.GetSReturnProfile(Session["u_email"].ToString());
            if(int.Parse(profile[0].s2.ToString()) == 1)
            {
                temp = "Charitable Trust";
            }
            else
            {
                temp = "Government";
            }
            b_s_r1.InnerHtml += "<td>"+profile[0].s1.ToString()+"</td><td>"+temp+"</td><td>"+profile[0].dt5+ "</td><td>" + profile[0].s3.ToString() + "</td><td>" + profile[0].s4.ToString() + "</td><td>" + profile[0].s5.ToString() + "</td><td>" + profile[0].i1.ToString() + "</td><td>" + profile[0].s11.ToString() + "</td>";
            if (int.Parse(profile[1].s2.ToString()) == 1)
            {
                temp = "Charitable Trust";
            }
            else
            {
                temp = "Government";
            }
            b_s_r2.InnerHtml += "<td>" + profile[1].s1.ToString() + "</td><td>" + temp + "</td><td>" + profile[1].dt5 + "</td><td>" + profile[1].s3.ToString() + "</td><td>" + profile[1].s4.ToString() + "</td><td>" + profile[1].s5.ToString() + "</td><td>" + profile[1].i1.ToString() + "</td><td>" + profile[1].s11.ToString() + "</td>";
            if (int.Parse(profile[2].s2.ToString()) == 1)
            {
                temp = "Charitable Trust";
            }
            else
            {
                temp = "Government";
            }
            b_s_r3.InnerHtml += "<td>" + profile[2].s1.ToString() + "</td><td>" + temp + "</td><td>" + profile[2].dt5 + "</td><td>" + profile[2].s3.ToString() + "</td><td>" + profile[2].s4.ToString() + "</td><td>" + profile[2].s5.ToString() + "</td><td>" + profile[2].i1.ToString() + "</td><td>" + profile[2].s11.ToString() + "</td>";
            b_s_lb.Text = "done";
        }
    }
}