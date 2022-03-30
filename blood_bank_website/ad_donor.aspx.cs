using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace blood_bank
{
    public partial class ad_home : System.Web.UI.Page
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
                cmd = new SqlCommand("select d_nm,d_gender,d_dob,d_phno,d_email,d_address,d_t_date,d_state,d_city,d_pincode,d_b_bank,d_bgrp,d_gov,d_govid from donor", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (i % 2 == 0)
                    {
                        for (int j = 0; j < 14; j++)
                        {
                            if (j == 5)
                            {
                                d_div.InnerHtml += "<textarea rows=6 disabled=disabled>" + dt.Rows[i][j].ToString() + "</textarea>";
                            }
                            else
                            {
                                d_div.InnerHtml += "<input type=text value='" + dt.Rows[i][j].ToString() + "' disabled=disabled />";
                            }
                        }
                        d_div.InnerHtml += "<br>";
                    }
                }
            }
            catch (Exception ex)
            {
                d_lb.Text = ex.Message;
            }
        }
    }
}