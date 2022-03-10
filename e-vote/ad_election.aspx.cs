using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class ad_election : System.Web.UI.Page
    {
        bool ch;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                if (ch == false)
                {
                    string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                    SqlConnection con = new SqlConnection(constr);
                    try
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select city,total_ward_no from election", con);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        cmd.ExecuteNonQuery();
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            for (int j = 0; j < 2; j++)
                            {
                                if (i % 2 == 0)
                                {
                                    ad_can_view.InnerHtml += "<input type=text id=text1 runat=server style=height:25px;width:115px; value = " + dt.Rows[i][j].ToString() + " disabled=disabled>";
                                }
                            }
                            if (i % 2 == 0)
                            {
                                ad_can_view.InnerHtml += "<a href=ad_ele2.aspx?e=" + dt.Rows[i][0] + ">Start</a><br>";
                            }
                            ad_can_view.InnerHtml += "<br>";
                        }
                    }
                    catch (Exception ex)
                    {
                        ad_r_lb.Text = ex.Message;
                    }
                }
            }
        }

        protected void add_elec(object sender,EventArgs e)
        {
            if (Text1.Visible == true)
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into election values('" + Text1.Value + "','" + email_id1.Value + "')", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("ad_election.aspx");
                }
                catch (Exception ex)
                {
                    ad_r_lb.Text = ex.Message;
                }
            }
            else
            {
                Text1.Visible = true;
                email_id1.Visible = true;
                ch = true;
            }
        }
    }
}