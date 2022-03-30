using System;
using System.Net.Mail;

namespace blood_bank
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void con_mail(object sender,EventArgs e)
        {
            try
            {
                string name = nm.Value, mail = em.Value, subj = sub.Value;
                string body = "Thank you , " + name;
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", mail, subj, body);
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "711hastiparmar");
                client.Send(mmsg);
                Response.Redirect("index.aspx");
            }
            catch (Exception e1)
            {
                //Console.WriteLine(e1);
                l1.Text = e1.Message;
            }
        }
    }
}