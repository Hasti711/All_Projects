using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace blood_bank
{
    public partial class ad_b_bk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn;
            SqlCommand cmd;
            SqlDataAdapter sda;
            DataTable dt;
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select b_bank_nm,category,last_update,b_address,b_city,b_phno,b_email from blood_bank_list", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (i % 2 == 0)
                    {
                        for (int j = 0; j < 7; j++)
                        {
                            if (j == 3)
                            {
                                b_bk_div.InnerHtml += "<textarea rows=6 disabled=disabled>" + dt.Rows[i][j].ToString() + "</textarea>";
                            }
                            else
                            {
                                b_bk_div.InnerHtml += "<input type=text value='" + dt.Rows[i][j].ToString() + "' disabled=disabled />";
                            }
                        }
                        b_bk_div.InnerHtml += "<br>";
                    }
                }
            }
            catch (Exception ex)
            {
                ad_bbk_lb.Text =  ex.Message;
            }
        }
    }
}