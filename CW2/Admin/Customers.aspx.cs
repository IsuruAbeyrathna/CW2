﻿using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace CW2.Admin
{
    public partial class Customers : System.Web.UI.Page
    {

        string connectionString = @"Data source=DESKTOP-P61A79S;initial catalog=XYZLMS;integrated security=true";
                

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }

        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM tbl_customer", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                gvCustomer.DataSource = dtbl;
                gvCustomer.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvCustomer.DataSource = dtbl;
                gvCustomer.DataBind();
                gvCustomer.Rows[0].Cells.Clear();
                gvCustomer.Rows[0].Cells.Add(new TableCell());
                gvCustomer.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvCustomer.Rows[0].Cells[0].Text = "No Data Found ..!";
                gvCustomer.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void gvCustomer_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO tbl_customer (cus_fname,cus_lsname,cus_address,cus_email,cus_phone,cus_status,cus_password) VALUES (@fName,@lsName,@address,@email,@phone,@status,@password)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@fName", (gvCustomer.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@lsName", (gvCustomer.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@address", (gvCustomer.FooterRow.FindControl("txtaddressFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@email", (gvCustomer.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@phone", (gvCustomer.FooterRow.FindControl("txtphoneFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@status", (gvCustomer.FooterRow.FindControl("txtstatusFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@password", (gvCustomer.FooterRow.FindControl("txtpassFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvCustomer_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCustomer.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvCustomer_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCustomer.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvCustomer_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                
                
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "UPDATE tbl_customer SET cus_fname=@fName,cus_lsname=@lsName,cus_address=@address,cus_email=@email,cus_phone=@phone,cus_status=@status,cus_password=@password WHERE cus_id = @id";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@fName", (gvCustomer.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@lsName", (gvCustomer.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@address", (gvCustomer.Rows[e.RowIndex].FindControl("txtadd") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@email", (gvCustomer.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@phone", (gvCustomer.Rows[e.RowIndex].FindControl("txtphone") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@status", (gvCustomer.Rows[e.RowIndex].FindControl("txtstatus") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@password", (gvCustomer.Rows[e.RowIndex].FindControl("txtpass") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@id",Convert.ToInt32(gvCustomer.DataKeys[e.RowIndex].Value.ToString()));
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "Record updated";
                        lblErrorMessage.Text = "";
                    }
                
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void gvCustomer_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM tbl_customer WHERE cus_id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvCustomer.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}