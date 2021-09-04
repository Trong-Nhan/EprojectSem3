using OnlineOrder.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineOrder.Controllers
{
    public class ProductTypesController : Controller
    {
        // GET: ProductTypes
        public ActionResult Index(String id, int page = 1, int pagesize = 9)
        {
            var ds = ProductTypesBUS.DetailsProduct(id).ToPagedList(page, pagesize);
            return View(ds);
        }
    }
}