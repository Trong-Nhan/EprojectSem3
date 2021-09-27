using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using OnlineOrder.Models.BUS;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class OrderController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/Order
        public ActionResult Index(int page = 1, int pagesize = 12)
        {
            var ds = CheckoutBUS.ListOrder().ToPagedList(page, pagesize);
            return View(ds);
        }

        [HttpGet]
        public ActionResult Update(int orderid, int status)
        {
            try
            {
                CheckoutBUS.UpdateOrder(orderid, status);
                return RedirectToAction("../Order/Index");
            }
            catch
            {
                return RedirectToAction("../Order/Index");
            }

        }

        public JsonResult Details(int id)
        {
            var orderdetail = CheckoutBUS.OrderDetail(id);

            return Json(new
            {
                data = orderdetail
            }, JsonRequestBehavior.AllowGet);
        }
    }
}
