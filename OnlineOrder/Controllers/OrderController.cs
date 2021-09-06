//using OnlineOrder.Models.BUS;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.Mvc;
//using Microsoft.AspNet.Identity;

//namespace OnlineOrder.Controllers
//{
//    [Authorize]
//    public class OrderController : Controller
//    {
//        // GET: Order
//        public ActionResult Index()
//        {
//            ViewBag.TotalPrice = OrderDetailBUS.TotalPrice();
//            return View();
//        }
//        [HttpPost]
//        public ActionResult Add(int framesid, int quantity, int orderid, int sizeid, DateTime createdat, DateTime updateat)
//        {
//            try
//            {
//                OrderDetailBUS.Add(framesid,quantity,orderid,sizeid,createdat,updateat);
//                return RedirectToAction("Index");
//            }
//            catch
//            {
//                return RedirectToAction("../Home/Index");
//            }
//        }
//    }
//}