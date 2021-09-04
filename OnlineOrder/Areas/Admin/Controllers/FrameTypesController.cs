using OnlineOrder.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrdersConnection;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class FrameTypesController : Controller
    {
        // GET: Admin/FrameTypes
        public ActionResult Index()
        {
            var ds = ProductTypesBUS.ListProductAdmin();
            return View(ds);
        }

        // GET: Admin/FrameTypes/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/FrameTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/FrameTypes/Create
        [HttpPost]
        public ActionResult Create(FrameType ft)
        {
            try
            {
                // TODO: Add insert logic here
                ProductTypesBUS.AddFT(ft);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/FrameTypes/Edit/5
        public ActionResult Edit(String id)
        {
            return View(ProductTypesBUS.DetailsProductAdmin(id));
        }

        // POST: Admin/FrameTypes/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, FrameType ft)
        {
            try
            {
                // TODO: Add update logic here
                ProductTypesBUS.UpdateFT(id, ft);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult TemporaryDelete(String id)
        {
            return View(ProductTypesBUS.DetailsProductAdmin(id));
        }
        [HttpPost]
        public ActionResult TemporaryDelete(String id, FrameType ft)
        {
            try
            {
                // TODO: Add delete logic here
                ft.Status = 1;
                ProductTypesBUS.UpdateFT(id,ft);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/FrameTypes/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/FrameTypes/Delete/5
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
