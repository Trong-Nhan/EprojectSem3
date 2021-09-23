using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using OnlineOrder.Models.BUS;

namespace OnlineOrder.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        public ActionResult SearchResult(string timkiem, int page = 1, int pagesize = 12)
        {            
            var db = SearchBUS.Search(timkiem).ToPagedList(page, pagesize);
            return View(db);
        }
    }
}