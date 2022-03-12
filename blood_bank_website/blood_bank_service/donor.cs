using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace blood_bank_service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "donor" in both code and config file together.
    public class donor : Idonor
    {
        string constr = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        public string d_reg(string nm, string g, DateTime dt1, int phno, string email, string add, DateTime dt2, string s, string c, int pin, string b_bk_nm_d, string bgrp, string go, int gid, int pass)
        {
            //mail
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("insert into donor values('" + nm + "','" + g + "','" + dt1 + "','" + phno + "','" + email + "','" + add + "','" + dt2 + "','" + s + "','" + c + "','" + pin + "','" + b_bk_nm_d + "','" + bgrp + "','" + go + "','" + gid + "','" + pass + "')", conn);
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

        public string d_lg(string email, int pass)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select d_email,d_password from donor where d_email = '" + email + "' and d_password = '" + pass + "'", conn);
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

        public string d_p_up(string nm, string g, DateTime dt1, int phno, string email, string add, DateTime dt2, string s, string c, int pin, string bgrp, string go, int gid)
        {
            //mail
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("update donor set d_nm = '" + nm + "',d_gender = '" + g + "',d_dob = '" + dt1 + "',d_phno = '" + phno + "',d_email = '" + email + "',d_address = '" + add + "',d_t_date = '" + dt2 + "',d_state = '" + s + "',d_city = '" + c + "',d_pincode = '" + pin + "',d_bgrp = '" + bgrp + "',d_gov = '" + go + "',d_govid = '" + gid + "' where d_email = '" + HttpContext.Current.Session["u_email"].ToString() + "'", conn);
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

        public string donor_user(DateTime dt5,string b_bk_nm)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("update donor set d_t_date  = '" + dt5 + "',d_b_bank = '"+b_bk_nm+"' where d_email = '" + HttpContext.Current.Session["u_email"].ToString() + "'", conn);
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
