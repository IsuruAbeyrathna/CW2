using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2.Admin
{
    public partial class AdDashboard : System.Web.UI.Page
    {
        //connection string
        string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            countOrders();

        }

        public void countOrders()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                string myCommand = "SELECT COUNT(*) FROM tbl_order";
                SqlCommand cmd = new SqlCommand(myCommand, con);


                lblCountor.Text = cmd.ExecuteScalar().ToString();
                con.Close();

            }

        }
    }
}