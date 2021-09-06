using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineOrdersConnection;

namespace OnlineOrder.Models.BUS
{
    public class ShippingBUS
    {
        //----------------------Admin-----------------------
        public static void AddShp(Shipping shp)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Insert(shp);
        }
        public static IEnumerable<Shipping> ListProductAdmin()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Shipping>("select * from Shipping");
        }
        public static Shipping DetailsProductAdmin(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Shipping>("select * from Shipping where Id = '" + id + "'");
        }
        public static void UpdateShp(String id, Shipping shp)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Update(shp, id);
        }
    }
}