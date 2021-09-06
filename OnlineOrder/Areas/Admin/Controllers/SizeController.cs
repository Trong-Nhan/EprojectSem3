using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;
using OnlineOrdersConnection;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class SizeController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/Size
        public ActionResult Index()
        {
            var ds = SizeBUS.ListProductAdmin();
            return View(ds);
        }

        // GET: Admin/Size/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Size/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Size/Create
        [HttpPost]
        public ActionResult Create(Size s)
        {
            try
            {
                // TODO: Add insert logic here
                SizeBUS.AddS(s);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Size/Edit/5
        public ActionResult Edit(String id)
        {
            return View(SizeBUS.DetailsProductAdmin(id));
        }

        // POST: Admin/Size/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, Size s)
        {
            try
            {
                // TODO: Add update logic here
                SizeBUS.UpdateS(id, s);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult TemporaryDelete(String id)
        {
            return View(SizeBUS.DetailsProductAdmin(id));
        }
        [HttpPost]
        public ActionResult TemporaryDelete(String id, Size s)
        {
            try
            {
                // TODO: Add delete logic here
                s.Status = 1;
                SizeBUS.UpdateS(id, s);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Size/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Size/Delete/5
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
