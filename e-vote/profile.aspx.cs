using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class campaigns : System.Web.UI.Page
    {
        string temp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_email"] != null)
            {
                pr_des.Visible = false;
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("select unm,uemail,uphnum,upincode,ucity,uelection,uaddress,voter_id from user_reg where uemail = '" + Session["u_email"] + "'", con);
                    SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                    DataTable dt1 = new DataTable();
                    sda1.Fill(dt1);
                    cmd1.ExecuteNonQuery();
                    Text1.Value = dt1.Rows[0][0].ToString();
                    Text2.Value = dt1.Rows[0][1].ToString();
                    Text3.Value = dt1.Rows[0][2].ToString();
                    Text4.Value = dt1.Rows[0][3].ToString();
                    text5.Value = dt1.Rows[0][4].ToString();
                    pr_img.Src = "uploads/" + dt1.Rows[0][5].ToString();
                    temp = dt1.Rows[0][5].ToString();
                    Textarea1.Value = dt1.Rows[0][6].ToString();
                    text6.Value = dt1.Rows[0][7].ToString();
                    if(int.Parse(Session["u_identity"].ToString()) == 2)
                    {
                        cmd1 = new SqlCommand("select description from can_des where uemail = '"+Session["u_email"].ToString()+"'", con);
                        sda1 = new SqlDataAdapter(cmd1);
                        dt1 = new DataTable();
                        sda1.Fill(dt1);
                        cmd1.ExecuteNonQuery();
                        pr_des.Value = dt1.Rows[0][0].ToString();
                        pr_des.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    //Console.WriteLine(ex.Message);
                    pr_lb.Text = ex.Message;
                }
            }
        }

        protected void edit_pr(object sender, EventArgs e)
        {
            string fnm, fpath, fdir = Server.MapPath("uploads/"),imgstr,constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            fnm = pr_new_img.PostedFile.FileName;
            fnm = Path.GetFileName(fnm);
            if (pr_new_img.Value != "")
            {
                if (!Directory.Exists(fdir))
                {
                    Directory.CreateDirectory(fdir);
                }
                fpath = fdir + fnm;
                pr_new_img.PostedFile.SaveAs(fpath);
            }
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                if(pr_img.Visible == true)
                {
                    imgstr = temp;
                }
                else
                {
                    imgstr = fnm;
                }
                SqlCommand cmd1 = new SqlCommand("update user_reg set unm = '"+Text1.Value+ "',uemail = '" + Text2.Value + "',uphnum = '" + Text3.Value + "',upincode = '" + Text4.Value + "',ucity = '" + text5.Value + "',uelection = '" + imgstr + "',uaddress = '" + Textarea1.Value + "',voter_id = '" + text6.Value + "' from user_reg where uemail = '" + Session["u_email"] + "'", con);
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sda1.Fill(dt1);
                cmd1.ExecuteNonQuery();
                pr_new_img.Visible = false;
                pr_img.Visible = true;
                Session["update"] = text6.Value;
                Session["ucity"] = text5.Value;
                Response.Redirect("index.aspx");
            }
            catch (Exception ex)
            {
                //Console.WriteLine(ex.Message);
                pr_lb.Text = ex.Message;
            }
        }

        protected void edit_img(object sender,EventArgs e)
        {
            pr_new_img.Visible = true;
            pr_img.Visible = false;
        }
    }
}