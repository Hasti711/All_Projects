using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class vote1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_email"] != null)
            {
                if (Session["election"] != null)
                {
                    string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                    SqlConnection con = new SqlConnection(constr);
                    try
                    {
                        l4.Text = "in try";
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select uemail,unm,uelection from user_reg where u_identity = 2 and ucity = '"+Session["ucity"].ToString()+"'", con);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        cmd.ExecuteNonQuery();
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            for (int j = 1; j < 3; j++)
                            {
                                if (i % 2 == 0)
                                {
                                    if (j == 2)
                                    {
                                        vote1_div.InnerHtml += "<img src=" + "uploads/" + dt.Rows[i][j].ToString() + " id=can_img style=height:150px; width:250px; runat=server />";                                        
                                        vote1_div.InnerHtml += "<br><h1><a href=vote2.aspx?c_e="+ dt.Rows[i][0].ToString() + ">Vote</a></h1>";
                                    }
                                    else
                                    {
                                        vote1_div.InnerHtml += "<br><input type=text id=can_nm1 runat=server disabled=disabled value=" + dt.Rows[i][j].ToString() + " />";
                                    }
                                }
                            }
                        }
                        l4.Text = "done.....";
                    }
                    catch (Exception ex)
                    {
                        //Console.WriteLine(ex);
                        l4.Text = ex.Message;
                    }
                }
                else
                {
                    l4.Text = "Election is not started...";
                }
            }
        }
    }
}