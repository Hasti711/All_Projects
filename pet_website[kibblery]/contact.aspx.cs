using System;
using System.Net.Mail;

namespace project
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void con_click(object sender,EventArgs e)
        {
            try
            {
                string name = nm.Value, mail = email.Value, subj = sub.Value;
                string body = "Thank you , " + name + " for " + msg.Value;
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", mail, subj, body);
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "");
                client.Send(mmsg);
                Response.Redirect("https://localhost:44376/index.aspx", false);
            }
            catch (Exception e1)
            {
                Console.WriteLine(e1);
            }
        }
    }
}