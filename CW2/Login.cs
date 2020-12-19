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
        public static int userId = 1;
        public string UPass = "1234";
        public string UserType;


        public Login()
        {
            constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //constr = ConfigurationManager.AppSettings["constr"].ToString();
            con = new SqlConnection(constr);
            
        }

        void bla()
        {
            UPass = password.ToString();
            if (UPass == "1234")
            {
                UserType = "Customer";
            }
            else if (UPass == "12345")
            {
                UserType = "Admin";
            }
            else
            {
                UserType = "Clerk";
            }
             
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
                sql = "SELECT * FROM tbl_login WHERE usr_name='" + this.uname + "';";

                com = new SqlCommand(sql, con);
                con.Open();
                dreader = com.ExecuteReader();
                if (dreader.HasRows == true)
                {
                    dreader.Read();
                    if (this.password == dreader["cus_password"].ToString())
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