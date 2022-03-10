using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

namespace project
{
    public partial class pet2 : System.Web.UI.Page
    {
        string m,u;
        protected void Page_Load(object sender, EventArgs e)
        {
            string selected_pet = Request.QueryString["selected_pet"];
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from [pet] where pid = '"+int.Parse(selected_pet)+"'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                p_nm.InnerText = dt.Rows[0][1].ToString();
                p_cate.InnerText = dt.Rows[0][2].ToString();
                img_pet2.Src = "images/"+dt.Rows[0][3].ToString();
                p_age.InnerText = dt.Rows[0][4].ToString();
                p_pro.InnerText = dt.Rows[0][5].ToString();
                p_desc.InnerText = dt.Rows[0][6].ToString();
                p_price.InnerText = dt.Rows[0][7].ToString();
                cmd = new SqlCommand("select unm,uemail from [user] where uid = '"+int.Parse(dt.Rows[0][8].ToString())+"'",conn);
                sda = new SqlDataAdapter(cmd);
                DataTable dt2 = new DataTable();
                sda.Fill(dt2);
                cmd.ExecuteNonQuery();
                owner.InnerText = dt2.Rows[0][0].ToString();
                m = dt2.Rows[0][1].ToString();
                u = dt.Rows[0][8].ToString();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
        protected void pet_click(object sender,EventArgs e)
        {
            string selected_pet = Request.QueryString["selected_pet"];
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into [payment](uid,pid) values('"+int.Parse(u)+"','"+ int.Parse(selected_pet) + "')", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
            }
            MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", m.ToString() , "Regarding Buy Pet", "Thank You For Buying Pet from Kibblery");
            mmsg.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
            client.Send(mmsg);
            Response.Redirect("index.aspx");
        }
    }
}