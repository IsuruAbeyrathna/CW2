using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CW2.Models
{
    public class Order
    {
        public int OrderId { get; set; }
        public string Description { get; set; }
        public string Status { get; set; }
        public DateTime OrderDate { get; set; }
        public decimal OrderFee { get; set; }
        public int CustomerId { get; set; }
        public Order()
        {

        }
        public Order(string Description, string Status, DateTime OrderDate, decimal OrderFee, int CustomerId, int OrderId)
        {
            this.Description = Description;
            this.Status = Status;
            this.OrderDate = OrderDate;
            this.OrderFee = OrderFee;
            this.CustomerId = CustomerId;
            this.OrderId = OrderId;
        }
        public Order(string Description, string Status, DateTime OrderDate, decimal OrderFee, int CustomerId)
        {
            this.Description = Description;
            this.Status = Status;
            this.OrderDate = OrderDate;
            this.OrderFee = OrderFee;
            this.CustomerId = CustomerId;
        }
        public int SaveOrder()
        {
            var insertQuery = @"insert into tbl_order
                                (ord_fee,ord_status,ord_description,ord_date,CustomerId)
                                values (@orderFee,@status,@description,@orderDate,@customerId);
;
                                SELECT SCOPE_IDENTITY()";
            object[] param = { "@orderFee",this.OrderFee,
                           "@status", this.Status,
                           "@description",this.Description ,
                           "@orderDate",this.OrderDate,
                           "@customerId",this.CustomerId };


            object result = DBHelper.ExecuteNonQueryReturn(insertQuery, param);
            return Convert.ToInt32( result.ToString());
        }
        public bool SaveOrderItems(List<int> serviceList,int oderId)
        {
            foreach (var item in serviceList)
            {
                var insertQuery = @"insert into tbl_order_service
                                (order_id,service_id)
                                values (@order_id, @service_id)";
                object[] param = { "@order_id",oderId,
                                    "@service_id", item };
                int result = DBHelper.ExecuteNonQuery(insertQuery, param);
            }         
            return true;
        }
        public bool DeleteOrder( int oderId)
        {

                var deletesubQuery = @"delete from tbl_order_service
                                 where order_id=@order_id ";
                object[] param = { "@order_id",oderId};
                int result1 = DBHelper.ExecuteNonQuery(deletesubQuery, param);
                var deleteOrderQuery = @"delete from tbl_order
                                     where order_id=@order_id ";
                object[] paramorder = { "@order_id", oderId };
                int result2 = DBHelper.ExecuteNonQuery(deleteOrderQuery, paramorder);
            if (result2 > 0)
            {
                return true;
            }else
            {
                return false;
            }
        }
        public DataTable GetOrderServices(int oderId)
        {

            var orderListQuery = @"SELECT  [order_id]
                                     ,[service_id]
                                 FROM [XYZLMS].[dbo].[tbl_order_service] where order_id=" + oderId + "";
            var orderList = DBHelper.ExecuteDataTable(orderListQuery, null);
            return orderList;


        }
        public DataTable GetOrderDetails(int oderId)
        { 
            var orderListQuery = @"SELECT  [order_id]
                                     ,[ord_description]
                                 FROM [XYZLMS].[dbo].[tbl_order_service] where order_id=" + oderId + " and ord_status=1";
            var orderList = DBHelper.ExecuteDataTable(orderListQuery, null);
            return orderList;


        }
        public bool updateOrder()
        {
            var deletesubQuery = @"delete from tbl_order_service
                                 where order_id=@order_id ";
            object[] param1 = { "@order_id", this.OrderId };
            int result1 = DBHelper.ExecuteNonQuery(deletesubQuery, param1);
            var insertQuery = @"update  tbl_order 
                                set ord_fee=@orderFee,
                                    ord_status=@status,
                                    ord_description=@description,
                                    ord_date=@orderDate
                                where order_id=@orderId";
            object[] param = { "@orderFee",this.OrderFee,
                           "@status", this.Status,
                           "@description",this.Description ,
                           "@orderDate",this.OrderDate,
                           "@orderId",this.OrderId };


            var result = DBHelper.ExecuteNonQuery(insertQuery, param);
            return true;
        }
    }
    
}