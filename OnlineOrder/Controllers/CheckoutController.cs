using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;
using Microsoft.AspNet.Identity;
using OnlineOrdersConnection;

namespace OnlineOrder.Controllers
{
    [Authorize]
    public class CheckoutController : Controller
    {
        // GET: Checkout
        public ActionResult Index()
        {
            List<Cart> ds = OrderDetailBUS.List(User.Identity.GetUserId()).ToList();
            if (ds.Count() == 0)
            {
                return RedirectToAction("../Products/Index");
            }
            ViewBag.TotalPrice = OrderDetailBUS.TotalPrice(User.Identity.GetUserId());
            return View(ds);
        }
        [HttpPost]
        public ActionResult Add(int cusid, int paymentid, int shippingid)
        {
            try
            {
                CheckoutBUS.AddOrder(cusid, paymentid, shippingid, User.Identity.GetUserId());
                return RedirectToAction("../Products/Index");
            }
            catch
            {
                return RedirectToAction("../OrderDetail/Index");
            }
        }
    }
}