using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_email"] != null)
            {
                if (Session["result"] != null)
                {
                    r_lb.Text = "Election is going on...";
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
                        r_lb.Text = dt.Rows[0][0].ToString() + " is the winner...";
                    }
                    catch (Exception ex)
                    {
                        r_lb.Text = ex.Message;
                    }
                }
            }
        }
    }
}