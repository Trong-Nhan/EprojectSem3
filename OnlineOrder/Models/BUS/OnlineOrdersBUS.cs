using OnlineOrdersConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineOrder.Models.BUS
{
    public class OnlineOrdersBUS
    {
        //---------------------Customer--------------------
        public static IEnumerable<Frame> ListProduct()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Frame>("select * from Frames where Status = 0");
        }
        public static Frame DetailsProduct(String a)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Frame>("select * from Frames where Id = @0",a);
        }
        public static IEnumerable<Frame> TopNewProduct()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Frame>("select Top 4 * from Frames where Note = N'New'");
        }
        public static IEnumerable<Frame> TopHotProduct()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Frame>("select Top 4 * from Frames where [View] > 0");
        }
        //--------------------Admin-----------------------
        public static IEnumerable<Frame> ListProductAdmin()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Frame>("select * from Frames");
        }
        public static void AddF(Frame f)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Insert(f);
        }
        public static Frame DetailsProductAdmin(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Frame>("select * from Frames where Id = '" + id + "'");
        }
        public static void UpdateF(String id, Frame f)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Update(f, id);
        }
    }
}