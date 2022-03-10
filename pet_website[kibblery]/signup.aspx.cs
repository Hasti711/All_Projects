using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

namespace project
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signupuser(object sender,EventArgs e)
        {
            string body = "Thank You For Registering...", constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            Label1.Text = "before try";
            try
            {
                conn.Open();
                Label1.Text = "inside try";
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[user]
           ([unm]
           ,[uadd]
           ,[ucity]
           ,[uemail]
           ,[uphone]
           ,[upass])
     VALUES('" + name.Value+"','"+address.Value+"','"+city.Value+"','"+email2.Value+"','"+phonenum.Value+"','"+password1.Value+"')",conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                Session["email"] = email2.Value;
                Label1.Text = "session set...";
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", email2.Value, "Registration With Kibblery", body);
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
                client.Send(mmsg);
                Response.Redirect("index.aspx");
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}