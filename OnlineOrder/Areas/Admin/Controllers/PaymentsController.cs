using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;
using OnlineOrdersConnection;

namespace OnlineOrder.Areas.Admin.Controllers
{
    public class PaymentsController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/Payments
        public ActionResult Index()
        {
            var ds = PaymentsBUS.ListProductAdmin();
            return View(ds);
        }

        // GET: Admin/Payments/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Payments/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Payments/Create
        [HttpPost]
        public ActionResult Create(Payment pay)
        {
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = pay.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgPayments/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    pay.Image = pay.Id + ".jpg";
                }
                // TODO: Add insert logic here
                PaymentsBUS.AddPay(pay);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/Payments/Edit/5
        public ActionResult Edit(String id)
        {
            return View(PaymentsBUS.DetailsProductAdmin(id));
        }

        // POST: Admin/Payments/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, Payment pay)
        {
            var tam = PaymentsBUS.DetailsProduct(id);
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    int fileName = pay.Id;
                    string fullPathWithFileName = "~/Asset/themes/images/imgPayments/" + fileName + ".jpg";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    pay.Image = pay.Id + ".jpg";
                }
                else
                {
                    pay.Image = tam.Image;
                }
                // TODO: Add insert logic here
                PaymentsBUS.UpdatePay(id, pay);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult TemporaryDelete(String id)
        {
            return View(PaymentsBUS.DetailsProductAdmin(id));
        }
        [HttpPost]
        public ActionResult TemporaryDelete(String id, Payment pay)
        {
            var tam = PaymentsBUS.DetailsProduct(id);
            try
            {
                // TODO: Add delete logic here
                tam.Status = 1;
                PaymentsBUS.UpdatePay(id, tam);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/Payments/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/Payments/Delete/5
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
