using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineOrdersConnection;

namespace OnlineOrder.Models.BUS
{
    public class BlogBUS
    {
        public static Blog DetailsProduct(String a)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Blog>("select * from Blog where Id = @0", a);
        }
        public static IEnumerable<Blog> ListProduct()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Blog>("select Top 4 * from Blog where Status = 0");
        }
        //----------------------Admin-----------------------
        public static void AddBl(Blog bl)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Insert(bl);
        }
        public static IEnumerable<Blog> ListProductAdmin()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Blog>("select * from Blog");
        }
        public static Blog DetailsProductAdmin(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Blog>("select * from Blog where Id = '" + id + "'");
        }
        public static void UpdateBl(String id, Blog bl)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Update(bl, id);
        }
    }
}