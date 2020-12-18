using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CW2.Admin
{
    public class Employee
    {
        //delacring variables
        private int emp_id;
        private string emp_name;
        private string emp_address;
        private string emp_email;
        private string emp_phone;
        private int emp_gender;
        private int emp_type;
        private int emp_status;
        private string emp_password;


        private SqlConnection con;
        private SqlCommand com;
        private SqlDataReader dreader;
        private string sql;

        //getters and setters
        public int Emp_id
        {
            get { return emp_id; }
            set { emp_id = value; }
        }

        public string Emp_name
        {
            get { return emp_name; }
            set { emp_name = value; }
        }

        public string Emp_address
        {
            get { return emp_address; }
            set { emp_address = value; }
        }

        public string Emp_email
        {
            get { return emp_email; }
            set { emp_email = value; }
        }

        public string Emp_phone
        {
            get { return emp_phone; }
            set { emp_phone = value; }
        }

        public int Emp_gender
        {
            get { return emp_gender; }
            set { emp_gender = value; }
        }

        public int Emp_type
        {
            get { return emp_type; }
            set { emp_type = value; }
        }

        public int Emp_status
        {
            get { return emp_status; }
            set { emp_status = value; }
        }

        public string Emp_password
        {
            get { return emp_password; }
            set { emp_password = value; }
        }


        public Employee()
        {
            string constr = ConfigurationManager.AppSettings["constr"].ToString();
            con = new SqlConnection(constr);
        }


        public int updateEmployee()
        {
            int result = 0;


            return 0;
        }
    }
}