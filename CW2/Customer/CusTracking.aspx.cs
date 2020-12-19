using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2.Customer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Order Tracking
        protected void ButSearch_Click(object sender, EventArgs e)
        {
            string maincon = ConfigurationManager.ConnectionStrings["XYZLMSConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(maincon);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand();
            //Search query
            string sqlquery = "Select * from tbl_order Where order_id like '%' +@oid+ '%'";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlconn;
            sqlcomm.Parameters.AddWithValue("oid", Txtsearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}