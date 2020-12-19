using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CW2
{
    public class LCustomer
    {
        //cusomer properties
        private int cus_id;
        private string cus_name;
        private string cus_address;        
        private string cus_email;
        private string cus_phone;
        private string cus_password;

        //SQL variables
        private SqlConnection con;
        private SqlCommand com;
        private SqlDataReader dreader;
        private string sql;


        //Getters and setters of cusomer properties
        public int Cus_id
        {
            get { return cus_id; }
            set { cus_id = value; }
        }

        public string Cus_name
        {
            get { return cus_name; }
            set { cus_name = value; }
        }

        public string Cus_address
        {
            get { return cus_address; }
            set { cus_address = value; }
        }

        public string Cus_email
        {
            get { return cus_email; }
            set { cus_email = value; }
        }

        public string Cus_phone
        {
            get { return cus_phone; }
            set { cus_phone = value; }
        }

        public string Cus_password
        {
            get { return cus_password; }
            set { cus_password = value; }
        }

        //Constructor
        public LCustomer()
        {
            string constr = ConfigurationManager.AppSettings["constr"].ToString();
            con = new SqlConnection(constr);
        }

        //cusomer insertion
        public int insertcustomer()
        {
            int result = 0;
            //try block
            try
            {
                //Insert cusomer record
                sql = "INSERT INTO tbl_customer(cus_name,cus_email,cus_address,cus_phone,cus_password,cus_status) VALUES(@cname,@cemail,@caddr,@ctel,@pass,@cstat)";
                com = new SqlCommand(sql, con);
                com.Parameters.Add("@cname", SqlDbType.VarChar, 50, "cus_name").Value = this.cus_name;
                com.Parameters.Add("@cemail", SqlDbType.VarChar, 25, "cus_email").Value = this.cus_email;
                com.Parameters.Add("@caddr", SqlDbType.VarChar, 100, "cus_address").Value = this.cus_address;              
                com.Parameters.Add("@ctel", SqlDbType.Char, 11, "cus_phone").Value = this.cus_phone;
                com.Parameters.Add("@pass", SqlDbType.VarChar, 50, "cus_password").Value = this.cus_password;
                com.Parameters.Add("@cstat", SqlDbType.VarChar, 50, "cus_status").Value = 1;
                con.Open();
                com.ExecuteNonQuery();

                result = 1;
            }
            //catch block
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