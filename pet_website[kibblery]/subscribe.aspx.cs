using System;
using System.Collections.Specialized;
using System.Net.Mail;

namespace project
{
    public partial class subscribe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //send mail
            NameValueCollection nvc = Request.Form;
            string body = "Demo",id = nvc["email"];
            if (!string.IsNullOrEmpty(nvc["email"]))
            {
                try
                {
                    MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", id, "Subscription to Kibblery", body);
                    mmsg.IsBodyHtml = true;
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
                    client.Send(mmsg);
                    Response.Redirect("https://localhost:44376/index.html", false);
                }
                catch (Exception e1)
                {
                    //Console.WriteLine(e1);
                    Label1.Text = e1.Message;
                }
            }
        }
    }
}