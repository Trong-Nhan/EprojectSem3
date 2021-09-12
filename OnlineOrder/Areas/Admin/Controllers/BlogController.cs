using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;
using OnlineOrdersConnection;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class BlogController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/Blog
        public ActionResult Index()
        {
            var ds = BlogBUS.ListProductAdmin();
            return View(ds);
        }

        // GET: Admin/Blog/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Blog/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Blog/Create
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(Blog bl)
        {
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = bl.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgBlogs/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    bl.Image = bl.Id + ".jpg";
                }
                // TODO: Add insert logic here
                BlogBUS.AddBl(bl);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Blog/Edit/5
        public ActionResult Edit(String id)
        {
            return View(BlogBUS.DetailsProductAdmin(id));
        }

        // POST: Admin/Blog/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(String id, Blog bl)
        {
            var tam = BlogBUS.DetailsProduct(id);
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = bl.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgBlogs/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    bl.Image = bl.Id + ".jpg";
                }
                else
                {
                    bl.Image = tam.Image;
                }
                // TODO: Add insert logic here
                BlogBUS.UpdateBl(id, bl);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult TemporaryDelete(String id)
        {
            return View(BlogBUS.DetailsProductAdmin(id));
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult TemporaryDelete(String id, Blog bl)
        {
            var tam = BlogBUS.DetailsProduct(id);
            try
            {
                // TODO: Add delete logic here
                tam.Status = 1;
                BlogBUS.UpdateBl(id, tam);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Blog/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Blog/Delete/5
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
