using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CW2
{
    public class Login
    {
        private string uname, password;
        private string constr, sql;
        private SqlConnection con;
        private SqlCommand com;
        private SqlDataReader dreader;

        public Login()
        {
            constr = ConfigurationManager.AppSettings["constr"].ToString();
            con = new SqlConnection(constr);
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public string Uname
        {
            get { return uname; }
            set { uname = value; }
        }

        public int validateLogin(int type)
        {
            int result = 0;
            try
            {
                if (type == 1)
                {
                    sql = "SELECT * FROM tbl_cust_login WHERE usr_name='" + this.uname + "';";
                }
                else if (type == 0)
                {
                    sql = "SELECT * FROM tbl_emp_login WHERE usr_name='" + this.uname + "';";
                }

                com = new SqlCommand(sql, con);
                con.Open();
                dreader = com.ExecuteReader();
                if (dreader.HasRows == true)
                {
                    dreader.Read();
                    if (this.password == dreader["usr_password"].ToString())
                    {
                        if (dreader["usr_status"].ToString() == "1")
                        {
                            result = 2;
                            if (type == 0)
                            {
                                int utype = int.Parse(dreader["usr_type"].ToString());
                                result = int.Parse("2" + utype.ToString());
                            }
                        }
                        else
                        {
                            result = 1;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return result;
        }

    }
}