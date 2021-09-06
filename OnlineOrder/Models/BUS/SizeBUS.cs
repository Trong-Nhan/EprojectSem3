using OnlineOrdersConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineOrder.Models.BUS
{
    public class SizeBUS
    {
        //----------------------Admin-----------------------
        public static void AddS(Size s)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Insert(s);
        }
        public static IEnumerable<Size> ListProductAdmin()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Size>("select * from Size");
        }
        public static Size DetailsProductAdmin(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Size>("select * from Size where Id = '" + id + "'");
        }
        public static void UpdateS(String id, Size s)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Update(s, id);
        }
    }
}