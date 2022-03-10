using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class ad_ele2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["e"] != null)
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("delete from election where city = '" + Request.QueryString["e"] + "'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    Session["election"] = Request.QueryString["e"];
                    Response.Redirect("ad_election.aspx");
                }
                catch (Exception ex)
                {
                    //Console.WriteLine(ex.Message);
                    ele2_lb.Text = ex.Message;
                }
            }
        }
    }
}