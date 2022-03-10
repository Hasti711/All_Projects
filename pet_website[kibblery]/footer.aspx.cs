using System;
using System.Net.Mail;

namespace project
{
    public partial class footer : System.Web.UI.Page
    {
        string m,body;
        static int btnchk;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (btnchk != 0)
            {
                sub.Value = "UNSUBSCRIBE";
                email.Visible = false;
                body = "Thank You , For Subscribing With Kibblery...";
                btnchk = 0;
            }
            else
            {
                sub.Value = "SUBSCRIBE";
                email.Visible = true;
                body = "Sad to Know that you are UnSubscribing With Kibblery...";
                btnchk = 1;
            }
        }
        protected void sub_click(object sender,EventArgs e)
        {
            m = email.Value;
            try
            {
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", m, "Subscribtion", body);
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
                client.Send(mmsg);
                Response.Redirect("index.aspx");
            }
            catch (Exception e1)
            {
                Console.WriteLine(e1);
                l1.Text = m;
            }
        }
    }
}