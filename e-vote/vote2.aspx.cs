using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class vote2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["c_e"] != null)
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    v2.Text = "in try";
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update vote set vote_count = vote_count + 1 where vote_count in(select vote_count from vote where uemail = '" + Request.QueryString["c_e"] + "')", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    Session["vote"] = "yes";
                    Session["result"] = "yes";
                    v2.Text = "Voting is done...";
                }
                catch (Exception ex)
                {
                    //Console.WriteLine(ex);
                    v2.Text = ex.Message;
                }
            }
            else
            {
                v2.Text = "inside else";
            }
        }
    }
}