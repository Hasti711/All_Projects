using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace project
{
    public partial class pet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Butto1.Visible = false;
                login1.Visible = true;
                img_div.Visible = false;
            }
            else
            {
                Butto1.Visible = true;
                login1.Visible = false;
                img_div.Visible = true;
                int count = 0;
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection conn = new SqlConnection(constr);
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("select pid,pimg from [pet]", conn);
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
                            img_div.InnerHtml += "<a href = pet2.aspx?selected_pet=" + dt.Rows[i]["pid"].ToString() + "><img src = " + "images/" + dt.Rows[i]["pimg"].ToString() + "style=width:400px;height:400px;title=Kibblery Image /></a>";
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }
        }
        protected void checkforlogin(object sender,EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }
        protected void sellpet(object sender, EventArgs e)
        {
            Response.Redirect("seller_pet.aspx");
        }
    }
}