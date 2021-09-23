using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineOrdersConnection;

namespace OnlineOrder.Models.BUS
{
    public class SearchBUS
    {
        public static IEnumerable<Frame> Search(string search)
        {
            var db = new OnlineOrdersConnectionDB();
            return db.Query<Frame>("select * from Frames where Frames like '%" + search + "%' and Status = 0");
        }
    }
}