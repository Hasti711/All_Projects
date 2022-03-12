using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace blood_bank_service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "blood_bank" in both code and config file together.
    public class blood_bank : Iblood_bank
    {
        string constr = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        public string b_bk_reg(string b_bk_nm, string cat, DateTime dt3, string add, string city, int phno, string email, int pass)
        {
            //mail
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("insert into blood_bank_list values('" + b_bk_nm + "','" + cat + "','" + dt3 + "','" + add + "','"+city+"','" + phno + "','" + email + "','" + pass + "')", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                //HttpContext.Current.Session["u_email"] = email;
                //HttpContext.Current.Session["update"] = "yes";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "index.aspx";
        }

        public string b_bk_lg(string email, int pass)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select b_email,b_password from blood_bank_list where b_email = '" + email + "' and b_password = '" + pass + "'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                //HttpContext.Current.Session["u_email"] = dt.Rows[0][0].ToString();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "index.aspx";
        }

        public string b_bk_p_up(string b_bk_nm, string cat, DateTime dt3, string add,string city, int phno, string email)
        {
            //mail
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("update blood_bank_list set b_bank_nm = '" + b_bk_nm + "',category = '" + cat + "',last_update = '" + dt3 + "',b_address = '" + add + "',b_city = '"+city+"',b_phno = '" + phno + "',b_email = '" + email + "' where b_email = '" + HttpContext.Current.Session["u_email"].ToString() + "'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                //HttpContext.Current.Session["u_email"] = email;
                //HttpContext.Current.Session["update"] = "yes";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "index.aspx";
        }

        public string b_bk_up(string cat, DateTime dt4)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("update blood_bank_list set category = '" + cat + "',last_update = '" + dt4 + "' where '" + HttpContext.Current.Session["u_email"].ToString() + "'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "index.aspx";
        }
    }
}
