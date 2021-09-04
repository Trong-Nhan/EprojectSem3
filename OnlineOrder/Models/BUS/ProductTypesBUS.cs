using OnlineOrdersConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineOrder.Models.BUS
{
    public class ProductTypesBUS
    {
        //------------------Customers------------------------
        public static IEnumerable<FrameType> ListProduct()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<FrameType>("select * from FrameTypes where Status = 0");
        }
        
        public static IEnumerable<Frame> DetailsProduct(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Frame>("select * from Frames where FrameTypeId = '" + id + "'");
        }
        //----------------------Admin-----------------------
        public static void AddFT(FrameType ft)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Insert(ft);
        }
        public static IEnumerable<FrameType> ListProductAdmin()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<FrameType>("select * from FrameTypes");
        }
        public static FrameType DetailsProductAdmin(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<FrameType>("select * from FrameTypes where Id = '" + id + "'");
        }
        public static void UpdateFT(String id, FrameType ft)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Update(ft,id);
        }
    }
}