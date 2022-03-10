using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace project
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Visible = false;
            Button2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string consttr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(consttr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select adid from admin where adnm = '"+TextBox1.Text+"' and adpass = '"+TextBox2.Text+"'",conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if(dt.Rows[0][0].ToString() == "1" || dt.Rows[0][0].ToString() == "2")
                {
                    Session["adminid"] = dt.Rows[0][0].ToString();
                    Label1.Text = "Enter which operation you want to do...[Type :- add,edit]";
                    TextBox3.Visible = true;
                    Button2.Visible = true;
                    TextBox2.Visible = false;
                }
                else
                {
                    Label1.Text = "Please Enter Valid Data";
                }
            }
            catch(Exception e1)
            {
                Label1.Text = e1.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(TextBox3.Text + ".aspx");
        }
    }
}