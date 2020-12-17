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
    public partial class Services : System.Web.UI.Page
    {
        //connection string
        string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvBind();
            }

        }

        void clear()
        {
            txtsname.Text = "";
            txtfee.Text = "";
            txtdes.Text = "";            

        }

        protected void gvBind()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_service", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    gvServices.DataSource = dr;
                    gvServices.DataBind();
                }

            }
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvServices.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)gvServices.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string fee = ((TextBox)gvServices.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string des= ((TextBox)gvServices.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbl_service set serv_name='" + name + "' , serv_fee='" + fee+ "', serv_description='" + des+ "' WHERE service_id='" + id + "' ", con);

                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Service record has Updated') </script>");
                    gvServices.EditIndex = -1;
                    gvBind();
                }

            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvServices.EditIndex = e.NewEditIndex;
            gvBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int id = Convert.ToInt32(gvServices.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                {
                    SqlCommand cmd = new SqlCommand("DELETE from tbl_service where service_id='" + id + "'", con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Service record has Deleted') </script>");
                        gvServices.EditIndex = -1;
                        gvBind();
                    }
                }
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvServices.EditIndex = -1;
            gvBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT into tbl_service values('" + txtsname.Text + "', '" + txtfee.Text + "' , '" + txtdes.Text +"')", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('New Service record added Succesfully') </script>");
                    gvBind();
                }
                clear();

            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}