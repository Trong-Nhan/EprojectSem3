using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;
using OnlineOrdersConnection;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class ShippingController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/Shipping
        public ActionResult Index()
        {
            var ds = ShippingBUS.ListProductAdmin();
            return View(ds);
        }

        // GET: Admin/Shipping/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Shipping/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Shipping/Create
        [HttpPost]
        public ActionResult Create(Shipping shp)
        {
            try
            {
                // TODO: Add insert logic here
                ShippingBUS.AddShp(shp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Shipping/Edit/5
        public ActionResult Edit(String id)
        {
            return View(ShippingBUS.DetailsProductAdmin(id));
        }

        // POST: Admin/Shipping/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, Shipping shp)
        {
            try
            {
                // TODO: Add update logic here
                ShippingBUS.UpdateShp(id, shp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult TemporaryDelete(String id)
        {
            return View(ShippingBUS.DetailsProductAdmin(id));
        }
        [HttpPost]
        public ActionResult TemporaryDelete(String id, Shipping shp)
        {
            try
            {
                // TODO: Add delete logic here
                shp.Status = 1;
                ShippingBUS.UpdateShp(id, shp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/Shipping/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Shipping/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
