using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class cadidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void can_login(object sender,EventArgs e)
        {
            if (Session["update"] == null)
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    l3.Text = "in try";
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select uemail,u_identity,ucity from user_reg where voter_id = '" + int.Parse(Text3.Value) + "'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    l3.Text = "done.....";
                    Session["u_email"] = dt.Rows[0][0].ToString();
                    Session["u_identity"] = dt.Rows[0][1];
                    Session["ucity"] = dt.Rows[0][2].ToString();
                    Response.Redirect("index.aspx");
                }
                catch (Exception ex)
                {
                    //Console.WriteLine(ex);
                    l3.Text = ex.Message;
                }
            }
            else if(Session["update"].ToString() == Text3.Value)
            {
                l3.Text = "Your procedure for registration is going on....";
                Text3.Value = "";
                c_pass.Value = "";
            }
        }
    }
}