using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineOrdersConnection;

namespace OnlineOrder.Models.BUS
{
    public class BannersBUS
    {
        public static Banner DetailsProduct(String a)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Banner>("select * from Banner where Id = @0", a);
        }
        public static IEnumerable<Banner> ListProduct()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Banner>("select Top 1 * from Banner where Status = 0");
        }
        //--------------------Admin-----------------------
        public static IEnumerable<Banner> ListProductAdmin()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Banner>("select * from Banner");
        }
        public static void AddBan(Banner ban)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Insert(ban);
        }
        public static Banner DetailsProductAdmin(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Banner>("select * from Banner where Id = '" + id + "'");
        }
        public static void UpdateBan(String id, Banner ban)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Update(ban, id);
        }
    }
}