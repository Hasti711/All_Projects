using System;
using System.Net.Mail;

namespace Project_SDP
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void con_click(object sender, EventArgs e)
        {
            try
            {
                string name = nm1.Value, mail = email1.Value, subj = sub1.Value;
                string body = "Thank you , " + name;
                MailMessage mmsg = new MailMessage("parmarhasti711@gmail.com", mail, subj, body);
                mmsg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("parmarhasti711@gmail.com", "711hastiparmar");
                client.Send(mmsg);
                l1.Text = "exiting try";
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