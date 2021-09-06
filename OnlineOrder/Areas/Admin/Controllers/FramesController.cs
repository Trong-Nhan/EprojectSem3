using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;
using OnlineOrdersConnection;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class FramesController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/Frames
        public ActionResult Index()
        {
            return View(OnlineOrdersBUS.ListProductAdmin());
        }

        // GET: Admin/Frames/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Frames/Create
        public ActionResult Create()
        {
            ViewBag.FrameTypeId = new SelectList(ProductTypesBUS.ListProduct(), "Id", "FrameTypes");
            return View();
        }

        // POST: Admin/Frames/Create
        [HttpPost]
        public ActionResult Create(Frame f)
        {
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = f.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgFrames/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    f.Image_1 = f.Id + ".jpg";
                }
                // TODO: Add insert logic here
                OnlineOrdersBUS.AddF(f);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Frames/Edit/5
        public ActionResult Edit(String id)
        {
            ViewBag.FrameTypeId = new SelectList(ProductTypesBUS.ListProduct(), "Id", "FrameTypes", OnlineOrdersBUS.DetailsProduct(id).FrameTypeId);
            return View(OnlineOrdersBUS.DetailsProductAdmin(id));
        }

        // POST: Admin/Frames/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, Frame f)
        {
            var tam = OnlineOrdersBUS.DetailsProduct(id);
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = f.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgFrames/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    f.Image_1 = f.Id + ".jpg";
                }
                else
                {
                    f.Image_1 = tam.Image_1;
                }
                // TODO: Add insert logic here
                OnlineOrdersBUS.UpdateF(id, f);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        public ActionResult TemporaryDelete(String id)
        {
            return View(OnlineOrdersBUS.DetailsProductAdmin(id));
        }
        [HttpPost]
        public ActionResult TemporaryDelete(String id, Frame f)
        {
            var tam = OnlineOrdersBUS.DetailsProduct(id);
            try
            {
                // TODO: Add delete logic here
                tam.Status = 1;
                OnlineOrdersBUS.UpdateF(id, tam);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/Frames/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Frames/Delete/5
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
