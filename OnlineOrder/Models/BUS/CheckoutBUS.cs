using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineOrdersConnection;

namespace OnlineOrder.Models.BUS
{
    public class CheckoutBUS
    {
        public static void AddOrder(int cusid, int paymentid, int shippingid, string userid)
        {
            using (
                var db = new OnlineOrdersConnectionDB())
            {
                //------------------Add Order ------------------
                Order order = new Order()
                {
                    CreatedAt = DateTime.Now,
                    CustId = cusid,
                    PaymentId = paymentid,
                    ShippingId = shippingid,
                    UserId = userid,
                    TotalPrice = OrderDetailBUS.TotalPrice(userid),
                    Status = 0
                };
                db.Insert("Orders", "Id", order);

                //--------------------Add Order Detail---------------
                List<Cart> cart = OrderDetailBUS.List(userid).ToList();
                OrderDetail orde = new OrderDetail();
                int i = 0;
                int id = GetIdOrder(userid);
                foreach (var item in cart)
                {
                    orde.OrderId = id;
                    orde.FramesId = item.FramesId;
                    orde.SizeId = item.SizeId;
                    orde.Quantity = (int)item.Quantity;
                    orde.Price = (int)item.Price;
                    orde.Image = item.Image;
                    orde.TotalPrice = item.TotalPrice;
                    i++;
                    db.Insert("OrderDetail", "Id", orde);
                }
                foreach (var item in cart)
                {
                    OrderDetailBUS.Delete((int)item.FramesId, (int)item.SizeId, item.CusId);
                }
            }
        }

        public static int GetIdOrder(string userid)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                string a = "select Id from Orders Where UserId ='" + userid + "' Order by CreatedAt Desc";
                return db.Query<int>(a).FirstOrDefault();

            }
        }

        public static IEnumerable<Order> ListOrder()
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                string a = "select * from Orders";
                return db.Query<Order>(a);
            }
        }
        public static IEnumerable<OrderDetail> OrderDetail(int orderid)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                string a = "select * from OrderDetail where OrderId ='" + orderid + "'";
                return db.Query<OrderDetail>(a);

            }
        }

        public static void UpdateOrder(int orderid, int status)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                db.Update<Order>("SET Status=@0 WHERE Id =@1", status, orderid);
            }
        }
    }
}