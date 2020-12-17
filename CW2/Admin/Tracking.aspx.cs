using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2.Admin
{
    public partial class Tracking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButSearch_Click(object sender, EventArgs e)
        {
            string maincon = ConfigurationManager.ConnectionStrings["XYZLMSConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(maincon);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand();
            string sqlquery = "Select * from tbl_employee Where emp_name like '%' +@emp_name+ '%'";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlconn;
            sqlcomm.Parameters.AddWithValue("emp_name", Txtsearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}