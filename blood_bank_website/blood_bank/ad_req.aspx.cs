using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace blood_bank
{
    public partial class ad_req : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn;
            SqlCommand cmd;
            SqlDataAdapter sda;
            DataTable dt;
            conn = new SqlConnection(constr);
            if (Session["update"] == null)
            {
                ad_req_lb.Text = "No Request";
            }
            else
            {
                ad_req_form.Visible = true;//table
                ad_aprv_btn.Visible = true;
                if (Session["update"].ToString() == "blood_bk")
                {
                    try
                    {
                        conn.Open();
                        cmd = new SqlCommand("select b_bank_nm,category,last_update,b_address,b_phno,b_email from blood_bank_list where b_email = '" + Session["u_email"].ToString() + "'", conn);
                        sda = new SqlDataAdapter(cmd);
                        dt = new DataTable();
                        sda.Fill(dt);
                        cmd.ExecuteNonQuery();
                        for(int i=0;i<dt.Rows.Count;i++)
                        {
                            for(int j=0;j<6;j++)
                            {
                                if (j == 3)
                                {
                                    ad_req_div.InnerHtml += "<textarea rows=6 disabled=disabled>" + dt.Rows[i][j].ToString() + "</textarea>";
                                }
                                else
                                {
                                    ad_req_div.InnerHtml += "<input type=text value='" + dt.Rows[i][j].ToString() + "' disabled=disabled />";
                                }
                            }
                            ad_req_div.InnerHtml += "<br>";
                        }                         
                    }
                    catch (Exception ex)
                    {
                        ad_req_lb.Text = ex.Message;
                    }
                }
                else if (Session["update"].ToString() == "donor")
                {
                    try
                    {
                        conn.Open();
                        cmd = new SqlCommand("select d_nm,d_gender,d_dob,d_phno,d_email,d_address,d_t_date,d_state,d_city,d_pincode,d_b_bank,d_bgrp,d_gov,d_govid from donor where d_email = '" + Session["u_email"].ToString() + "'", conn);
                        sda = new SqlDataAdapter(cmd);
                        dt = new DataTable();
                        sda.Fill(dt);
                        cmd.ExecuteNonQuery();
                        for(int i=0;i<dt.Rows.Count;i++)
                        {
                            for(int j=0;j<14;j++)
                            {
                                if(j==5)
                                {
                                    ad_req_div.InnerHtml += "<textarea rows=6 disabled=disabled>" + dt.Rows[i][j].ToString() + "</textarea>";
                                }
                                else
                                {
                                    ad_req_div.InnerHtml += "<input type=text value='" + dt.Rows[i][j].ToString() + "' disabled=disabled />";
                                }
                            }
                            ad_req_div.InnerHtml += "<br>";
                        }
                    }
                    catch (Exception ex)
                    {
                        ad_req_lb.Text = ex.Message;
                    }
                }
                else
                {
                    ad_req_form.Visible = false;//table
                }
            }
        }

        protected void ad_aprv_fun(object sender,EventArgs e)
        {
            Session.Remove("update");
            Response.Redirect("ad_req.aspx");
        }

        protected void ad_logout_fun(object sender,EventArgs e)
        {
            Session.Remove("admin");
            Response.Redirect("ad_login.aspx");
        }
    }
}