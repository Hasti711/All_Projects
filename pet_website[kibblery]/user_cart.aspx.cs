using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

namespace project
{
    public partial class user_cart : System.Web.UI.Page
    {
        string temp;
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select prid,prquan from [cart] where  uid = '"+int.Parse(Session["uid"].ToString())+"'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("select * from [product] where prid = '"+dt.Rows[0]["prid"]+"'", conn);
                sda = new SqlDataAdapter(cmd);
                DataTable dt2 = new DataTable();
                sda.Fill(dt2);
                cmd.ExecuteNonQuery();
                for(int i=0;i<dt2.Rows.Count;i++)
                {
                    temp = dt.Rows[i]["prid"].ToString();
                    img_cart.Src = dt2.Rows[i]["primg"].ToString();
                    p_nm.InnerHtml = dt2.Rows[i]["prnm"].ToString();
                    p_type.InnerHtml = dt2.Rows[i]["prtype"].ToString();
                    p_br.InnerHtml = dt2.Rows[i]["prbrand"].ToString();
                    p_price.InnerHtml = dt2.Rows[i]["prprice"].ToString();
                    p_quan.InnerHtml = dt.Rows[i]["pquan"].ToString();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
        protected void pro_click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("delete from [cart] where uid = '" + int.Parse(Session["uid"].ToString()) + "'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", Session["email"].ToString(), "Regarding Buy Pet Products", "Thank You For Buying Pet Products from Kibblery");
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
                client.Send(mmsg);
                Response.Redirect("index.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}