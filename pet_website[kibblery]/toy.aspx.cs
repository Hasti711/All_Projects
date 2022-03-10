using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace project
{
    public partial class toy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                acc_div.Visible = false;
                login.Visible = true;
            }
            else
            {
                acc_div.Visible = true;
                login.Visible = false;
            }
            int count = 0;
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select prid,primg from [product] where prnm = 'Accessories'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (count == 3)
                    {
                        count = 0;
                        img_div.InnerHtml += "<br />";
                    }
                    else
                    {
                        count++;
                        img_div.InnerHtml += "<a href = all_product.aspx?selected_pro=" + dt.Rows[i]["prid"].ToString() + "><img src = " + dt.Rows[i]["primg"].ToString() + " style=width:400px;height:400px;title=Kibblery Image /></a>";
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                //l1.Text = ex.Message;
            }
        }
        protected void checkforlogin(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }
    }
}