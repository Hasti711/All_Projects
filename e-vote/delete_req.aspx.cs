using System;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project_SDP
{
    public partial class delete_req : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void del_req(object sender,EventArgs e)
        {
            if (Session["delete"] == null)
            {
                Session["delete"] = int.Parse(Text3.Value);
                string fnm, fpath, fdir = Server.MapPath("uploads/");
                fnm = d_cer.PostedFile.FileName;
                fnm = Path.GetFileName(fnm);
                if (d_cer.Value != "")
                {
                    if (!Directory.Exists(fdir))
                    {
                        Directory.CreateDirectory(fdir);
                    }
                    fpath = fdir + fnm;
                    d_cer.PostedFile.SaveAs(fpath);
                }
                string constr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into del_voter values('"+Session["delete"].ToString()+"','"+fnm.ToString()+"')", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    del__reqlb.Text = ex.Message;
                }
                Response.Redirect("index.aspx");
            }
            else if (Session["delete"].ToString() == Text3.Value)
            {
                del__reqlb.Text = "Your procedure for registration is going on....";
                Text3.Value = "";
            }
        }
    }
}