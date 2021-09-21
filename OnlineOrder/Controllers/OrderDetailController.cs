using OnlineOrder.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace OnlineOrder.Controllers
{
    [Authorize]
    public class OrderDetailController : Controller
    {
        // GET: Order
        public ActionResult Index()
        {
            ViewBag.TotalPrice = OrderDetailBUS.TotalPrice(User.Identity.GetUserId());
            return View(OrderDetailBUS.List(User.Identity.GetUserId()));
        }
        [HttpPost]
        public ActionResult Add(int framesid, int quantity, int sizeid, string image, float price)
        {
            try
            {
                OrderDetailBUS.Add(framesid, quantity, sizeid, image, price, User.Identity.GetUserId());
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("../Products/Index");
            }
        }
        [HttpPost]
        public ActionResult Update(int framesid, int quantity, int sizeid, string image, float price)
        {
            try
            {
                OrderDetailBUS.Update(framesid, quantity, sizeid, image, price, User.Identity.GetUserId());
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("../Products/Index");
            }

        }
        [HttpGet]
        public ActionResult Delete(int framesid, int sizeid)
        {
            try
            {
                OrderDetailBUS.Delete(framesid, sizeid, User.Identity.GetUserId());
                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("../Products/Index");
            }

        }

    }
}