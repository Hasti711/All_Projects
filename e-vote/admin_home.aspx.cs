using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlCon = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection con = new SqlConnection(sqlCon);
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select unm,uemail,uphnum,upincode,ucity,uelection,uaddress,voter_id from user_reg", con);
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sda1.Fill(dt1);
                cmd1.ExecuteNonQuery();
                for (int i = 0; i < dt1.Rows.Count; i++)
                {
                    for (int j = 0; j < 8; j++)
                    {
                        if (i % 2 == 0)
                        {
                            if (j == 5)
                            {
                                ad_can_view.InnerHtml += "<img src =uploads/" + dt1.Rows[i][j].ToString() + " id=all_can_img runat=server style=height:150px;width:250px; />";
                            }
                            else if (j == 6)
                            {
                                ad_can_view.InnerHtml += "<textarea id = Textarea2 runat = server style=height:50px;width:150px; disabled=disabled>" + dt1.Rows[i][j].ToString() + "</textarea > ";
                            }
                            else
                            {
                                ad_can_view.InnerHtml += "<input type=text id=text1 runat=server style=height:25px;width:115px; value = " + dt1.Rows[i][j].ToString() + " disabled=disabled>";
                            }
                        }
                    }
                    ad_can_view.InnerHtml += "<br>";
                }
            }
            catch (Exception ex)
            {
                ad_can_lb.Text = ex.Message;
            }
        }

        protected void ad_logout_Click(object sender, EventArgs e)
        {
            Session.Remove("admin");
            Session.Remove("election");
            Session.Remove("update");
            Session.Remove("delete");
            Session.Remove("result");
            Response.Redirect("admin_login.aspx");
        }
    }
}