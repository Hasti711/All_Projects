using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace project
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("adminid");
            Session.RemoveAll();
            Response.Redirect("admin_login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string consttr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(consttr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("delete from product where prid = '"+TextBox1.Text+"'",conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                Label1.Text = "Record deleted....";
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string consttr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(consttr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from product where prid = '" + TextBox1.Text + "'",conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                Label1.Text = "Record selected....";
                TextBox2.Text = dt.Rows[0][1].ToString();
                TextBox3.Text = dt.Rows[0][2].ToString();
                TextBox4.Text = dt.Rows[0][3].ToString();
                TextBox5.Text = dt.Rows[0][4].ToString();
                TextBox6.Text = dt.Rows[0][5].ToString();
                TextBox7.Text = dt.Rows[0][6].ToString();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string consttr = WebConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            SqlConnection conn = new SqlConnection(consttr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("update product set prnm = '" + TextBox2.Text + "' , prtype = '" + TextBox3.Text + "', prbrand = '" + TextBox4.Text + "',prquantity = '" + TextBox5.Text + "',primg = '" + TextBox6.Text + "',prprice = '" + TextBox7.Text + "' where prid = '"+TextBox1.Text+"'",conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                Label1.Text = "Record updated....";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}