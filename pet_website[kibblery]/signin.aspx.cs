using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

namespace project
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signinuser(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            l1.Text = "before try";
            try
            {
                conn.Open();
                l1.Text = "inside try";
                SqlCommand cmd = new SqlCommand("select uid,uemail,upass from [user] where uemail = '"+email.Value+"' and upass = '"+password.Value+"'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                Session["email"] = email.Value;
                Session["uid"] = dt.Rows[0]["uid"];
                l1.Text = "session set...";
                Response.Redirect("index.aspx");
            }
            catch(Exception ex)
            {
                l1.Text = ex.Message;
            }
        }
    }
}