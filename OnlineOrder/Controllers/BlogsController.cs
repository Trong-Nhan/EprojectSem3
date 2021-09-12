using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OnlineOrder.Models.BUS;

namespace OnlineOrder.Controllers
{
    public class BlogsController : Controller
    {
        // GET: Blogs
        public ActionResult Details(String id)
        {
            var db = BlogBUS.DetailsProduct(id);
            return View(db);
        }
    }
}