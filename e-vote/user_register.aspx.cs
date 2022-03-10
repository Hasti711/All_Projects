using System;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class user_register : System.Web.UI.Page
    {
        int identity = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            descrip.Visible = false;
        }

        protected void user_reg_btn(object sender,EventArgs e)
        {
            string fnm, fpath, fdir = Server.MapPath("uploads/"),constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            fnm = election_card.PostedFile.FileName;
            fnm = Path.GetFileName(fnm);
            if (election_card.Value != "")
            {
                if (!Directory.Exists(fdir))
                {
                    Directory.CreateDirectory(fdir);
                }
                fpath = fdir + fnm;
                election_card.PostedFile.SaveAs(fpath);
            }
            else
            {
                l1.Text = "image is not here";
            }
            SqlConnection con = new SqlConnection(constr);
            try
            {
                l1.Text = "in try";
                con.Open();
                if (descrip.Value != "Add Description" && descrip.Value != "")
                {
                    identity = 2;
                    SqlCommand cmd = new SqlCommand("insert into can_des values('" + email_id.Value + "','" + descrip.Value + "')", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                }
                SqlCommand cmd1 = new SqlCommand("insert into user_reg(unm,uemail,uphnum,upincode,u_identity,upass,ucity,uelection,uaddress,voter_id) values('"+Text1.Value+"','"+email_id.Value+"','"+int.Parse(ph_no.Value)+"','"+int.Parse(pincode.Value)+ "','"+identity+ "','"+Text6.Value+ "','"+ass_no1.Value+"','"+fnm.ToString()+"','"+Textarea1.Value+"','"+Text4.Value+"')",con);
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sda1.Fill(dt1);
                cmd1.ExecuteNonQuery();
                if(identity == 2 && descrip.Value != "Add Description" && descrip.Value != "")
                {
                    cmd1 = new SqlCommand("insert into vote values('"+ email_id.Value + "', 0)", con);
                    sda1 = new SqlDataAdapter(cmd1);
                    dt1 = new DataTable();
                    sda1.Fill(dt1);
                    cmd1.ExecuteNonQuery();
                }
                Session["u_email"] = email_id.Value;
                Session["ucity"] = ass_no1.Value;
                Session["u_identity"] = identity;
                Session["update"] = Text4.Value;
                l1.Text = "done";
                Response.Redirect("index.aspx");
            }
            catch(Exception ex)
            {
                //Console.WriteLine(ex);
                l1.Text = ex.Message;
            }
        }

        protected void ch_iden(object sender,EventArgs e)
        {
            descrip.Visible = true;
            descrip.Value = "";
        }
    }
}