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
    public partial class WebForm3 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_product", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }

            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                {
                    SqlCommand cmd = new SqlCommand("DELETE from tbl_product where product_id='" + id + "'", con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Product record has Deleted') </script>");
                        GridView1.EditIndex = -1;
                        gvBind();
                    }
                }
            }

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string fee = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string des = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbl_product set prod_name='" + name + "' , prod='" + fee + "', prod_description='" + des + "' WHERE product_id='" + id + "' ", con);

                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Service record has Updated') </script>");
                    GridView1.EditIndex = -1;
                    gvBind();
                }

            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT into tbl_product values('" + txtsname.Text + "', '" + txtfee.Text + "' , '" + txtdes.Text + "')", con);
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