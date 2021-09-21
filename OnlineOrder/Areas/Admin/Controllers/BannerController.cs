using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;
using OnlineOrdersConnection;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class BannerController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/Banner
        public ActionResult Index()
        {
            var ds = BannersBUS.ListProductAdmin();
            return View(ds);
        }

        // GET: Admin/Banner/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Banner/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Banner/Create
        [HttpPost]
        public ActionResult Create(Banner ban)
        {
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = ban.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgBanners/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    ban.Image = ban.Id + ".jpg";
                }
                // TODO: Add insert logic here
                BannersBUS.AddBan(ban);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Banner/Edit/5
        public ActionResult Edit(String id)
        {
            return View(BannersBUS.DetailsProductAdmin(id));
        }

        // POST: Admin/Banner/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, Banner ban)
        {
            var tam = BannersBUS.DetailsProduct(id);
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = ban.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgBanners/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    ban.Image = ban.Id + ".jpg";
                }
                else
                {
                    ban.Image = tam.Image;
                }
                // TODO: Add insert logic here
                BannersBUS.UpdateBan(id, ban);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult TemporaryDelete(String id)
        {
            return View(BannersBUS.DetailsProductAdmin(id));
        }
        [HttpPost]
        public ActionResult TemporaryDelete(String id, Banner ban)
        {
            var tam = BannersBUS.DetailsProduct(id);
            try
            {
                // TODO: Add delete logic here
                tam.Status = 1;
                BannersBUS.UpdateBan(id, tam);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/Banner/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Banner/Delete/5
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
