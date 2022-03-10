using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class aal_candidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_email"] != null)
            {
                if (all_ct.Checked == false)
                {
                    u_ct.Checked = true;
                    string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                    SqlConnection con = new SqlConnection(constr);
                    try
                    {
                        con.Open();
                        SqlCommand cmd2, cmd1 = new SqlCommand("select unm,uemail,uphnum,upincode,ucity,uelection,uaddress,voter_id from user_reg where u_identity = 2 and ucity = '" + Session["ucity"].ToString() + "'", con);
                        SqlDataAdapter sda2, sda1 = new SqlDataAdapter(cmd1);
                        DataTable dt2, dt1 = new DataTable();
                        dt2 = new DataTable();
                        sda1.Fill(dt1);
                        cmd1.ExecuteNonQuery();
                        for (int i = 0; i < dt1.Rows.Count; i++)
                        {
                            for (int j = 0; j < 8; j++)
                            {
                                if (i % 2 == 0)
                                {
                                    if (j == 1)
                                    {
                                        cmd2 = new SqlCommand("select description from can_des where uemail = '" + dt1.Rows[i][1].ToString() + "'", con);
                                        sda2 = new SqlDataAdapter(cmd2);
                                        sda2.Fill(dt2);
                                        cmd2.ExecuteNonQuery();
                                    }
                                    else if (j == 5)
                                    {
                                        allcan_view.InnerHtml += "<img src =uploads/" + dt1.Rows[i][j].ToString() + " id=all_can_img runat=server style=height:150px;width:250px; />";
                                    }
                                    else if (j == 6)
                                    {
                                        allcan_view.InnerHtml += "<textarea id = Textarea2 runat = server style=height:150px;width:250px; disabled=disabled>" + dt1.Rows[i][j].ToString() + "</textarea > ";
                                    }
                                    else if (j == 7)
                                    {
                                        allcan_view.InnerHtml += "<textarea id = Textarea2 runat = server style=height:150px;width:250px; disabled=disabled>" + dt2.Rows[i][0].ToString() + "</textarea > ";
                                    }
                                    else
                                    {
                                        allcan_view.InnerHtml += "<input type=text id=text1 runat=server value = " + dt1.Rows[i][j].ToString() + " disabled=disabled>";
                                    }
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        all_lb.Text = ex.Message;
                    }
                }
            }
        }

        protected void all_can_fun(object sender,EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmd2, cmd1 = new SqlCommand("select unm,uemail,uphnum,upincode,ucity,uelection,uaddress,voter_id from user_reg where u_identity = 2 and ucity not in('" + Session["ucity"].ToString() + "')", con);
                SqlDataAdapter sda2, sda1 = new SqlDataAdapter(cmd1);
                DataTable dt2, dt1 = new DataTable();
                dt2 = new DataTable();
                sda1.Fill(dt1);
                cmd1.ExecuteNonQuery();
                u_ct.Checked = false;
                for (int i = 0; i < dt1.Rows.Count; i++)
                {
                    for (int j = 0; j < 8; j++)
                    {
                        if (i % 2 == 0)
                        {
                            if (j == 1)
                            {
                                cmd2 = new SqlCommand("select description from can_des where uemail = '" + dt1.Rows[i][1].ToString() + "'", con);
                                sda2 = new SqlDataAdapter(cmd2);
                                sda2.Fill(dt2);
                                cmd2.ExecuteNonQuery();
                            }
                            else if (j == 5)
                            {
                                allcan_view.InnerHtml += "<img src =uploads/" + dt1.Rows[i][j].ToString() + " id=all_can_img runat=server style=height:150px;width:250px; />";
                            }
                            else if (j == 6)
                            {
                                allcan_view.InnerHtml += "<textarea id = Textarea2 runat = server style=height:150px;width:250px; disabled=disabled>" + dt1.Rows[i][j].ToString() + "</textarea > ";
                            }
                            else if (j == 7)
                            {
                                allcan_view.InnerHtml += "<textarea id = Textarea2 runat = server style=height:150px;width:250px; disabled=disabled>" + dt2.Rows[i][0].ToString() + "</textarea > ";
                            }
                            else
                            {
                                allcan_view.InnerHtml += "<input type=text id=text1 runat=server value = " + dt1.Rows[i][j].ToString() + " disabled=disabled>";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                all_lb.Text = ex.Message;
            }
        }
    }
}