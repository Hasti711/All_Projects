using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class voter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void voter_login(object sender,EventArgs e)
        {
            if (Session["update"] == null)
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    l2.Text = "in try";
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select uemail,u_identity,ucity from user_reg where voter_id = '" + int.Parse(Text1.Value) + "'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    l2.Text = "done.....";
                    Session["u_email"] = dt.Rows[0][0].ToString();
                    Session["u_identity"] = dt.Rows[0][1];
                    Session["ucity"] = dt.Rows[0][2].ToString();
                    Response.Redirect("index.aspx");
                }
                catch (Exception ex)
                {
                    //Console.WriteLine(ex);
                    l2.Text = ex.Message;
                }
            }
            else if (Session["update"].ToString() == Text1.Value)
            {
                l2.Text = "Your procedure for registration is going on....";
                Text1.Value = "";
                v_pass.Value = "";
            }
        }
    }
}