using CW2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CW2.Customer
{
    public partial class CustomerPlaceOrder : System.Web.UI.Page
    {
        DataTable serviceList;
        DataTable orderList;
        int customerId = Login.userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtOrderId.Enabled = false;
                LoadServices();
                LoadcustomerOders();
            }

        }
        public void LoadServices()
        {
            grdServiceList.DataSource = null;
            var serviceListQuery = @"SELECT  [service_id],[serv_name],[serv_fee],[serv_description] FROM [XYZLMS].[dbo].[tbl_service]";
            serviceList = DBHelper.ExecuteDataTable(serviceListQuery, null);
            if (serviceList.Rows.Count > 0)
            {
                grdServiceList.DataSource = serviceList;
                grdServiceList.DataBind();
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtDescription.Text = null;
            LoadServices();
        }

        //making order
        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {

            var serviceItemList = new List<int>();
            decimal totalCost = 0;
            foreach (GridViewRow row in grdServiceList.Rows)
            {
                // Access the CheckBox
                CheckBox cb = (CheckBox)row.FindControl("chkServiceItem");
                if (cb != null && cb.Checked)
                {
                    serviceItemList.Add(Convert.ToInt32(row.Cells[1].Text));
                    totalCost = totalCost + Convert.ToDecimal(row.Cells[3].Text.ToString());
                }
            }
            if (txtOrderId.Text == "")
            {
                var order = new Order(txtDescription.Text, "1", DateTime.Now, totalCost, customerId);
                var orderId = order.SaveOrder();
                var result = order.SaveOrderItems(serviceItemList, orderId);
                if (result)
                    MsgBox("Order Saved !", this.Page, this);
            }
            else
            {
                var order = new Order(txtDescription.Text, "1", DateTime.Now, totalCost, customerId, Convert.ToInt32(txtOrderId.Text));
                var orderupdated = order.updateOrder();
                if (orderupdated)
                {
                    var result = order.SaveOrderItems(serviceItemList, Convert.ToInt32(txtOrderId.Text));
                    if (result)
                        MsgBox("Order updated !", this.Page, this);
                }
            }
            LoadcustomerOders();
        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void LoadcustomerOders()
        {
            grdCustomerOrders.DataSource = null;
            var orderListQuery = @"SELECT [order_id]
                                  ,[ord_fee]
                                  ,[ord_status]
                                  ,[ord_description]
                                  ,[ord_date]
                              FROM [XYZLMS].[dbo].[tbl_order] where [CustomerId]='" + customerId + "'";
            orderList = DBHelper.ExecuteDataTable(orderListQuery, null);
            if (orderList.Rows.Count > 0)
            {
                grdCustomerOrders.DataSource = orderList;
                grdCustomerOrders.DataBind();
            }

        }

        protected void grdCustomerOrders_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "edit_order")
            {
                GridViewRow row = grdCustomerOrders.Rows[rowIndex];
                int orderId = Convert.ToInt32(row.Cells[0].Text);
                var order = new Order();
                DataTable orderDetails = order.GetOrderServices(orderId);
                txtOrderId.Text = orderId.ToString();
                txtDescription.Text = row.Cells[3].Text;

                foreach (GridViewRow servicerow in grdServiceList.Rows)
                {
                    CheckBox cb = (CheckBox)servicerow.FindControl("chkServiceItem");
                    for (int i = 0; i < orderDetails.Rows.Count; i++)
                    {
                        if (row.Cells[0].Text == orderDetails.Rows[i][1].ToString())
                        {
                            cb.Checked = true;
                        }
                    }
                }
            }
            if (e.CommandName == "delete_order")
            {
                GridViewRow row = grdCustomerOrders.Rows[rowIndex];
                var order = new Order();
                var result = order.DeleteOrder(Convert.ToInt32(row.Cells[0].Text));

                if (result)
                {
                    MsgBox("Order No. " + row.Cells[0].Text + " Deleted !", this.Page, this);
                }
                LoadcustomerOders();
            }
        }
    }
}