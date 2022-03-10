using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class ad_result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["result"] != null && Session["result"].ToString() == "yes")
            {
                ad_win.Text = "Election is going on...";
            }
            else if(Session["election"] == null)
            {
                ad_win.Text = "Election is not started";
                re_btn.Visible = false;
            }
            else
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select uemail from vote where vote_count in(select max(vote_count) from vote)", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("select unm from user_reg where uemail = '" + dt.Rows[0][0].ToString() + "'", con);
                    sda = new SqlDataAdapter(cmd);
                    dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    ad_win.Text = dt.Rows[0][0].ToString() + " is the winner...";
                    re_btn.Visible = false;
                }
                catch (Exception ex)
                {
                    //ad_win.Text = ex.Message;
                    Console.WriteLine(ex.Message);
                }
            }
        }

        protected void res_fun(object sender,EventArgs e)
        {
            Session.Remove("result");
        }
    }
}