using Api_Sati;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Api_Sati.Controllers
{
    public class SatniceController : Controller
    {
        // GET: Satnice
        public ActionResult Satnice()
        {
            PRAEntities db = new PRAEntities();

            List<Projekt> projects = db.Projekts.ToList();
            return View(projects);
        }
    }
}