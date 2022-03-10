using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;
using System.IO;

namespace project
{
    public partial class seller_pet : System.Web.UI.Page
    {
        int uid;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] != null)
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection conn = new SqlConnection(constr);
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("select uid from [user] where uemail = '"+ Session["email"].ToString() + "'", conn);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    id = dt.Rows[0][0].ToString();
                    uid = int.Parse(id);
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
            }
        }
        protected void sell_pet(object sender,EventArgs e)
        {
            Label1.Text = "inside sell_pet";
            string fnm,fpath,fdir=Server.MapPath("uploads/"),constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            fnm = p_img.PostedFile.FileName;
            fnm = Path.GetFileName(fnm);
            if(p_img.Value != "")
            {
                if(!Directory.Exists(fdir))
                {
                    Directory.CreateDirectory(fdir);
                }
                fpath = fdir + fnm;
                p_img.PostedFile.SaveAs(fpath);
            }
            else
            {
                Label1.Text = "image is not there";
            }
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into [pet](pnm,pcatgory,pimg,page,ppro,pdes,pprice,uid) values('"+p_nm.Value+"','"+p_cate.Value+"','"+fnm.ToString()+"','"+int.Parse(p_age.Value)+"','"+p_pro.Value+"','"+p_desc.Value+"','"+int.Parse(p_price.Value)+"','"+uid+"')",conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", Session["email"].ToString(), "Selling Pet With Kibblery", "Thank You for Selling Pet with KIBBLERY");
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
                client.Send(mmsg);
                Response.Redirect("profile.aspx");
            }
            catch(Exception ex)
            {
                //Console.WriteLine(ex);
                Label1.Text = ex.Message;
            }
        }
    }
}