using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

namespace project
{
    public partial class all_product : System.Web.UI.Page
    {
        string pr,u;
        protected void Page_Load(object sender, EventArgs e)
        {
            string selected_pro = Request.QueryString["selected_pro"];
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from [product] where prid = '" + int.Parse(selected_pro) + "'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                pr = dt.Rows[0][0].ToString();
                p_nm.InnerText = dt.Rows[0][1].ToString();
                p_type.InnerText = dt.Rows[0][2].ToString();
                p_br.InnerText = dt.Rows[0][3].ToString();
                img_pro2.Src = dt.Rows[0][5].ToString();
                p_price.InnerText = dt.Rows[0][6].ToString();
                cmd = new SqlCommand("select uid from [user] where uemail = '" + Session["email"].ToString() + "'", conn);
                sda = new SqlDataAdapter(cmd);
                DataTable dt2 = new DataTable();
                sda.Fill(dt2);
                u = dt2.Rows[0]["uid"].ToString();
                cmd.ExecuteNonQuery();
                //l1.Text = dt.Rows[0][5].ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                //l1.Text = ex.Message;
            }
        }
        protected void pro_click(object sender,EventArgs e)
        {
            string selected_pro = Request.QueryString["selected_pro"];
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into [payment](uid,prid,prquan) values('" + int.Parse(u) + "','" + int.Parse(selected_pro) + "','"+int.Parse(quan.SelectedIndex.ToString())+"')", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                //l1.Text = "pro_click done";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                //l1.Text = ex.Message;
            }
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
        protected void add_to_cart(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into [cart](uid,prid,prquan) values('" + int.Parse(u) + "','" + int.Parse(pr) + "','"+ int.Parse(quan.SelectedIndex.ToString()) + "')", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                l1.Text = "done";
            }
            catch (Exception ex)
            {
                //Console.WriteLine(ex);
                l1.Text = ex.Message;
            }
        }
    }
}