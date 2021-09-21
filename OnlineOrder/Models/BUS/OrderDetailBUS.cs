using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineOrdersConnection;

namespace OnlineOrder.Models.BUS
{
    public class OrderDetailBUS
    {
        public static void Add(int framesid, int quantity, int sizeid, string image, float price, string cusid)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                var x = db.Query<OrderDetail>("select * from OrderDetail where FramesId = '" + framesid + "' and CusId='" + cusid + "'and SizeId='" + sizeid + "'").ToList();
                if (x.Count() > 0)
                {
                    int a = (int)x.ElementAt(0).Quantity + quantity;
                    Update(framesid, a, sizeid, image, price, cusid);
                }
                else
                {
                    OrderDetail orderdetail = new OrderDetail()
                    {
                        FramesId = framesid,
                        SizeId = sizeid,
                        Quantity = quantity,
                        Image = image,
                        Price = price,
                        TotalPrice = price * quantity,
                        CusId = cusid
                    };
                    db.Insert(orderdetail);
                }
            }
        }
        public static void Update(int framesid, int quantity, int sizeid, string image, float price, string cusid)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                OrderDetail orderdetail = new OrderDetail()
                {
                    FramesId = framesid,
                    SizeId = sizeid,
                    Quantity = quantity,
                    Image = image,
                    Price = price,
                    TotalPrice = price * quantity,
                    CusId = cusid
                };
                var temp = db.Query<OrderDetail>("select Id from OrderDetail where FramesId = '" + framesid + "' and CusId='" + cusid + "'and SizeId='" + sizeid + "'").FirstOrDefault();
                db.Update(orderdetail, temp.Id);
            }
        }
        public static IEnumerable<OrderDetail> List(string cusid)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                return db.Query<OrderDetail>("select * from OrderDetail where CusId = '" + cusid + "'");
            }
        }
        public static void Delete(int framesid, int sizeid, string cusid)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                var a = db.Query<OrderDetail>("select * from OrderDetail where FramesId = '" + framesid + "' and CusId='" + cusid + "'and SizeId='" + sizeid + "'").FirstOrDefault();
                db.Delete(a);
            }
        }
        public static float TotalPrice(string cusid)
        {
            using (var db = new OnlineOrdersConnectionDB())
            {
                return db.Query<float>("select sum(TotalPrice) from OrderDetail where CusId = '" + cusid + "'").FirstOrDefault();
            }
        }
    }
}