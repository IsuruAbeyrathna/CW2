﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2.Admin
{
    public partial class UserAccounts : System.Web.UI.Page
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
            txtuname.Text = "";
            Txtpass.Text = "";
            txtempid.Text = "";
            txtstatus.Text = "";
            txtType.Text = "";
            
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tbl_emp_login values('" + txtuname.Text + "', '" + Txtpass.Text + "' , '" + txtempid.Text + "', '" + txtType.Text + "', '" + txtstatus.Text + "')", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert(' New User added Succesfully') </script>");
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
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_emp_login", con);
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
            string password = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string empid = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string type = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;            
            string status = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbl_emp_login set usr_name='" + name + "' , usr_password='" + password + "', emp_id='" + empid+ "',usr_type='" + type+ "', usr_status='" + status+ "' WHERE usr_id='" + id + "' ", con);

                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('User data has updated') </script>");
                    GridView1.EditIndex = -1;
                    gvBind();
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
                    SqlCommand cmd = new SqlCommand("delete from tbl_emp_login where usr_id='" + id + "'", con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('User has Deleted') </script>");
                        GridView1.EditIndex = -1;
                        gvBind();
                    }
                }
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvBind();
        }
    }
}