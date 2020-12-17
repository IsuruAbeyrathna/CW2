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
    public partial class WebForm2 : System.Web.UI.Page
    {
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
            txtname.Text = "";
            Txtaddr.Text = "";
            txtemail.Text = "";
            txtphone.Text = "";
            txtgender.Text = "";
            txtstatus.Text = "";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using(SqlConnection con =new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tbl_employee values('" +txtname.Text + "', '" + Txtaddr.Text +"' , '" +txtemail.Text+ "', '" + txtphone.Text+ "', '"+txtgender.Text+"', '"+ txtstatus.Text+"')", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('New Employee added submitted Succesfully') </script>");
                    gvBind();
                }
                clear();
                
            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void gvBind()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_employee", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string address = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string phone= ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string gender= ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string status= ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            using(SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbl_employee set emp_name='" + name + "' , emp_address='" + address + "', emp_email='" + email + "',emp_phone='" + phone + "', emp_gender='" + gender + "', emp_status='" + status + "'WHERE emp_id='" + id + "' ", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Employee record has updated') </script>");
                    GridView1.EditIndex = -1;
                    gvBind();
                }

            }

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            using(SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                {
                    SqlCommand cmd = new SqlCommand("delete from tbl_employee where emp_id='"+id+"'", con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Employee record has Deleted') </script>");
                        GridView1.EditIndex = -1;
                        gvBind();
                    }
                }
            }
        }
    }
}