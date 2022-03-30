using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

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
                cmd = new SqlCommand("update donor set d_nm = '" + nm + "',d_gender = '" + g + "',d_dob = '" + dt1 + "',d_phno = '" + phno + "',d_email = '" + email + "',d_address = '" + add + "',d_t_date = '" + dt2 + "',d_state = '" + s + "',d_city = '" + c + "',d_pincode = '" + pin + "',d_bgrp = '" + bgrp + "',d_gov = '" + go + "',d_govid = '" + gid + "' where d_email = '" + email + "'", conn);
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

        public string donor_user(DateTime dt5,string b_bk_nm,string email)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("update donor set d_t_date  = '" + dt5 + "',d_b_bank = '"+b_bk_nm+"' where d_email = '" + email + "'", conn);
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

        public ReturnDProfile GetDReturnProfile(string email)
        {
            DateTime d1, d2;
            long l1, l2, l3;
            string s1, s2, s3, s4, s5, s6, s7, s8, s9;
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select d_nm,d_gender,d_dob,d_phno,d_email,d_address,d_t_date,d_state,d_city,d_pincode,d_b_bank,d_bgrp,d_gov,d_govid from donor where d_email = '"+email+"'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            s1 = dt.Rows[0][0].ToString();
            s2 = dt.Rows[0][1].ToString();
            d1 = Convert.ToDateTime(dt.Rows[0][2]);
            l1 = Convert.ToInt64(dt.Rows[0][3].ToString());
            s3 = dt.Rows[0][4].ToString();
            s4 = dt.Rows[0][5].ToString();
            d2 = Convert.ToDateTime(dt.Rows[0][6]);
            s5 = dt.Rows[0][7].ToString();
            s6 = dt.Rows[0][8].ToString();
            l2 = Convert.ToInt64(dt.Rows[0][9]);
            s7 = dt.Rows[0][10].ToString();
            s8 = dt.Rows[0][11].ToString();
            s9 = dt.Rows[0][12].ToString();
            l3 = Convert.ToInt64(dt.Rows[0][13]);
            var returnvalues = new ReturnDProfile(s1,s2,d1,l1,s3,s4,d2,s5,s6,l2,s7,s8,s9,l3);
            return returnvalues;
        }

        public ReturnDProfile ReturnD(string email)
        {
            DateTime d;
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select d_t_date from donor where d_email = '" + email + "'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            d = Convert.ToDateTime(dt.Rows[0][0]);
            var returnvalues = new ReturnDProfile(d);
            return returnvalues;
        }
    }
}
