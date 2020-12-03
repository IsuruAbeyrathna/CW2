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
    }
}