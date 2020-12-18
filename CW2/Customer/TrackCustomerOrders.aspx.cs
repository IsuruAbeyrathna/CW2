using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2.Customer
{
    public partial class TrackCustomerOrders : System.Web.UI.Page
    {
        int customerId = Login.userId;
        DataTable orderList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadcustomerOders();
            }
        }
        public void LoadcustomerOders()
        {
            grdCustomerOrders.DataSource = null;
            var orderListQuery = @"SELECT [order_id]
                                  ,[ord_fee]
                                  ,[ord_status]
                                  ,[ord_description]
                                  ,[ord_date]
                              FROM [XYZLMS].[dbo].[tbl_order] where [CustomerId]='" + customerId + "' order by ord_date desc";
            orderList = DBHelper.ExecuteDataTable(orderListQuery, null);
            if (orderList.Rows.Count > 0)
            {
                grdCustomerOrders.DataSource = orderList;
                grdCustomerOrders.DataBind();
            }

        }
    }
}