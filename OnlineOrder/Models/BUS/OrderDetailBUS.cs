//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using OnlineOrdersConnection;

//namespace OnlineOrder.Models.BUS
//{
//    public class OrderDetailBUS
//    {
//        public static void Add(int framesid, int quantity, int orderid, int sizeid, DateTime createdat, DateTime updateat)
//        {
//            using (var db = new OnlineOrdersConnectionDB())
//            {
//                var x = db.Query<OrderDetail>("select * from OrderDetail where FramesId = '" + framesid + "' and OrderId='" + orderid + "'and SizeId='" + sizeid + "'").ToList();
//                if (x.Count() > 0)
//                {
//                    int a = (int)x.ElementAt(0).Quantity + quantity;
//                    Update(framesid, orderid, sizeid, a, createdat, updateat);
//                }
//                else
//                {
//                    OrderDetail orderdetail = new OrderDetail()
//                    {
//                        OrderId = orderid,
//                        FramesId = framesid,
//                        SizeId = sizeid,
//                        Quantity = quantity,
//                        CreatedAt = createdat,
//                        UpdatedAt = updateat
//                    };
//                    db.Insert(orderdetail);
//                }
//            }
//        }
//        public static void Update(int framesid, int quantity, int orderid, int sizeid, DateTime createdat, DateTime updateat)
//        {
//            using (var db = new OnlineOrdersConnectionDB())
//            {
//                OrderDetail orderdetail = new OrderDetail()
//                {
//                    OrderId = orderid,
//                    FramesId = framesid,
//                    SizeId = sizeid,
//                    Quantity = quantity,
//                    CreatedAt = createdat,
//                    UpdatedAt = updateat
//                };
//                var temp = db.Query<OrderDetail>("select * from OrderDetail where FramesId = '" + framesid + "' and OrderId='" + orderid + "'and SizeId='" + sizeid + "'").FirstOrDefault();
//                db.Update(orderdetail, temp.Id);
//            }
//        }
//        public static IEnumerable<OrderDetail> List(int orderid)
//        {
//            using (var db = new OnlineOrdersConnectionDB())
//            {
//                return db.Query<OrderDetail>("select * from OrderDetail where OrderId = '" + orderid + "'");
//            }
//        }
//        public static float TotalPrice(int orderid)
//        {
//            using (var db = new OnlineOrdersConnectionDB())
//            {
//                return db.Query<float>("select sum(Price) from OrderDetail where OrderId = '" + orderid + "'").FirstOrDefault();
//            }
//        }
//    }
//}