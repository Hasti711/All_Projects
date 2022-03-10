using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class ad_del_req : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                if (Session["delete"] != null)
                {
                    string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                    SqlConnection con = new SqlConnection(constr);
                    try
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select unm,uemail,uphnum,upincode,u_identity,ucity,uelection,uaddress,voter_id from user_reg where voter_id = '" + Session["delete"] + "'", con);
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
                        if (int.Parse(dt.Rows[0][4].ToString()) == 2)
                        {
                            Textarea1_1.Visible = true;
                            cmd = new SqlCommand("select description from can_des where uemail = '" + dt.Rows[0][1].ToString() + "'", con);
                            sda = new SqlDataAdapter(cmd);
                            dt = new DataTable();
                            sda.Fill(dt);
                            cmd.ExecuteNonQuery();
                            Textarea1_1.Value = dt.Rows[0][0].ToString();
                        }
                        cmd = new SqlCommand("select d_cer from del_voter where d_v_id = '" + Session["delete"] + "'", con);
                        sda = new SqlDataAdapter(cmd);
                        dt = new DataTable();
                        sda.Fill(dt);
                        cmd.ExecuteNonQuery();
                        del_cer.Src = "uploads/"+dt.Rows[0][0].ToString();
                    }
                    catch (Exception ex)
                    {
                        ad_r_lb.Text = ex.Message;
                    }
                }
                else
                {
                    tbl.Visible = false;
                    ad_del_g.Visible = false;
                    ad_r_lb.Text = "No Delete Requests...";
                }
            }
        }

        protected void ad_aprv(Object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from user_reg where voter_id = '" + Session["delete"] + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                ad_r_lb.Text = ex.Message;
            }
            Session.Remove("delete");
            ad_del_g.Visible = false;
            tbl.Visible = false;
            Response.Redirect("admin_home.aspx");
        }
    }
}