using OnlineOrdersConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineOrder.Models.BUS
{
    public class PaymentsBUS
    {
        public static Payment DetailsProduct(String a)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Payment>("select * from Payments where Id = @0", a);
        }
        //--------------------Admin-----------------------
        public static IEnumerable<Payment> ListProductAdmin()
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Payment>("select * from Payments");
        }
        public static void AddPay(Payment pay)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Insert(pay);
        }
        public static Payment DetailsProductAdmin(String id)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.SingleOrDefault<Payment>("select * from Payments where Id = '" + id + "'");
        }
        public static void UpdatePay(String id, Payment pay)
        {
            var db = new OnlineOrdersConnectionDB();
            db.Update(pay, id);
        }
    }
}