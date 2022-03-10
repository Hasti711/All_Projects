using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class ad_req : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                if (Session["update"] != null)
                {
                    string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                    SqlConnection con = new SqlConnection(constr);
                    try
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select unm,uemail,uphnum,upincode,u_identity,ucity,uelection,uaddress,voter_id from user_reg where uemail = '" + Session["u_email"] + "'", con);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        cmd.ExecuteNonQuery();
                        Text1.Value = dt.Rows[0][0].ToString();
                        email_id1.Value = dt.Rows[0][1].ToString();
                        ph_no1.Value = dt.Rows[0][2].ToString();
                        Text4_1.Value = dt.Rows[0][8].ToString();
                        pincode1.Value = dt.Rows[0][3].ToString();
                        ass_no1_1.Value = dt.Rows[0][5].ToString();
                        election_card_1.Src = "uploads/" + dt.Rows[0][6].ToString();
                        descrip1.Value = dt.Rows[0][7].ToString();
                        if(int.Parse(dt.Rows[0][4].ToString()) == 2)
                        {
                            Textarea1_1.Visible = true;
                            cmd = new SqlCommand("select description from can_des where uemail = '"+Session["u_email"].ToString()+"'", con);
                            sda = new SqlDataAdapter(cmd);
                            dt = new DataTable();
                            sda.Fill(dt);
                            cmd.ExecuteNonQuery();
                            Textarea1_1.Value = dt.Rows[0][0].ToString();
                        }
                    }
                    catch (Exception ex)
                    {
                        ad_r_lb.Text = ex.Message;
                    }
                }
                else
                {
                    tbl1.Visible = false;
                    form2.Visible = false;
                    ad_r_lb.Text = "No Requests...";
                }
            }
        }

        protected void ad_aprv(Object sender,EventArgs e)
        {
            Session.Remove("update");
            form2.Visible = false;
            tbl1.Visible = false;
            Response.Redirect("admin_home.aspx");
        }
    }
}