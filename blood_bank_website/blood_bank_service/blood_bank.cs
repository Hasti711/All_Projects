using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.ServiceModel.Activation;
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
        long i1;
        DateTime dt5;
        string s1, s2, s3, s4, s5, s6;

        public string b_bk_reg(string b_bk_nm, string cat, DateTime dt3, string add,string st, string city,string bgrp, int phno, string email, int pass)
        {
            //mail
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("insert into blood_bank_list values('" + b_bk_nm + "','" + cat + "','" + dt3 + "','" + add + "','" + st + "','" + city+ "','" + bgrp + "','" + phno + "','" + email + "','" + pass + "')", conn);
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
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "index.aspx";
        }

        public string b_bk_p_up(string b_bk_nm, string cat, DateTime dt3, string add,string st,string city, int phno, string email)
        {
            //mail
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("update blood_bank_list set b_bank_nm = '" + b_bk_nm + "',category = '" + cat + "',last_update = '" + dt3 + "',b_address = '" + add + "',b_st = '"+st+"',b_city = '"+city+"',b_phno = '" + phno + "',b_email = '" + email + "' where b_email = '" + HttpContext.Current.Session["u_email"].ToString() + "'", conn);
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

        public string b_bk_up(string cat,string bgrp, DateTime dt4)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("update blood_bank_list set category = '" + cat + "',bgrp = '"+bgrp+"',last_update = '" + dt4 + "' where '" + HttpContext.Current.Session["u_email"].ToString() + "'", conn);
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

        public ReturnProfile GetReturnProfile(string email)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select b_bank_nm,category,last_update,b_address,b_st,b_city,b_phno,b_email from blood_bank_list where b_email = '"+email+"'",conn);
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
            dt5 = Convert.ToDateTime(dt.Rows[0][2]);
            s3 = dt.Rows[0][3].ToString();
            s6 = dt.Rows[0][7].ToString();
            s4 = dt.Rows[0][4].ToString();
            i1 = Convert.ToInt64(dt.Rows[0][5]);
            s5 = dt.Rows[0][6].ToString();            
            var returnvalues = new ReturnProfile(s1,s2,dt5,s3,s4,i1,s5,s6);
            return returnvalues;
        }

        public ReturnProfile GetProfileSome(string email)
        {
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select category,last_update,bgrp from blood_bank_list where b_email = '" + email + "'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            s2 = dt.Rows[0][0].ToString();
            s3 = dt.Rows[0][2].ToString();
            dt5 = Convert.ToDateTime(dt.Rows[0][1]);
            var returnvalues = new ReturnProfile(dt5, s2,s3);
            return returnvalues;
        }

        public ReturnProfile[] GetSReturnProfile(string email)
        {
            string[] s = new string[6];
            int temp = 0;
            conn = new SqlConnection(constr);
            try
            {
                conn.Open();
                cmd = new SqlCommand("select d_state,d_city,d_bgrp from donor where d_email = '"+email+"'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            try
            {
                conn.Open();
                cmd = new SqlCommand("select b_bank_nm,category,last_update,b_address,b_st,b_city,b_phno,b_email from blood_bank_list where b_st = '"+dt.Rows[0][0].ToString()+"' and b_city = '"+dt.Rows[0][1].ToString()+"' and bgrp = '"+dt.Rows[0][2].ToString()+"'", conn);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            ReturnProfile[] returnvalues = new ReturnProfile[dt.Rows.Count];
            for(int i=0;i<dt.Rows.Count;i++)
            {
                for (int j = 0; j < 8; j++)
                {
                    if(j == 2)
                    {
                        dt5 = Convert.ToDateTime(dt.Rows[i][j].ToString());
                    }
                    else if(j == 5)
                    {
                        i1 = Convert.ToInt64(dt.Rows[i][j]);
                    }
                    else
                    {
                        s[temp] = dt.Rows[i][j].ToString();
                        temp++;
                    }
                }
                returnvalues[i] = new ReturnProfile(s,i1,dt5);
                temp = 0;
            }
            return returnvalues;
        }
    }
}
