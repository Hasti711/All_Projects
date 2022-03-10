using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

namespace project
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from [user] where uemail ='" + Session["email"] + "'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                nm.Value = dt.Rows[0][1].ToString();
                Address.Value = dt.Rows[0][2].ToString();
                ucity.Value = dt.Rows[0][3].ToString();
                email.Value = dt.Rows[0][4].ToString();
                pnum.Value = dt.Rows[0][5].ToString();
                cmd = new SqlCommand("select pid,prid from payment where uid = '"+int.Parse(dt.Rows[0][0].ToString())+"'", conn);
                sda = new SqlDataAdapter(cmd);
                DataTable dt2 = new DataTable();
                sda.Fill(dt2);
                cmd.ExecuteNonQuery();
                if (dt2.Rows.Count == 0)
                {
                    sl1_div.Visible = false;
                    sl2_div.Visible = false;
                }
                else
                {
                    sl1.InnerHtml += dt2.Rows[0]["pid"].ToString();
                    sl2.InnerHtml += dt2.Rows[0]["prid"].ToString();
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message+" page load";
            }
        }
        protected void userprofile(object sender,EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("update [user] set unm = '"+nm.Value+"',uadd = '"+Address.Value+"',ucity = '"+ucity.Value+"',uemail = '"+email.Value+"',uphone = '"+pnum.Value+"'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", email.Value, "Your Profile With Kibblery", "Your Profile is updated...");
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
                client.Send(mmsg);
                Response.Redirect("profile.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}