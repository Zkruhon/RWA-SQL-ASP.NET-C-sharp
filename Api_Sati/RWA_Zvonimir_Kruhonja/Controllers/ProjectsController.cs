using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Api_Sati.App_Start;
using Api_Sati.Controllers;
using Api_Sati.Models.vm;
using Api_Sati;

namespace Api_Sati.Controllers
{
    public class ProjectsController : Controller
    {
        // GET: Projects
        private PRAEntities db = new PRAEntities();
        public ActionResult Index()
        {

            var project = db.Projekts.Include(p => p.Klijent).OrderBy(p => p.IDProjekt);
            return View(project.ToList());
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Projekt project = db.Projekts.Find(id);

            if (project == null)
            {
                return HttpNotFound();
            }
            var viewModel = AutoMapperConfig.Mapper.Map<ProjektVM>(project);
            return View(project);
        }

        [HttpPost]
        public ActionResult Edit(ProjektVM p)
        {
            var project = db.Projekts.Find(p.IDProjekt);
            project.Naziv = p.Naziv;
            project.DatumOtvaranja = p.DatumOtvaranja;
            project.KlijentID = p.KlijentID;
            project.VoditeljProjektaID = p.VoditeljProjektaID;
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            var project = db.Projekts.Find(id);
            return View(project);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Projekt project)
        {
            db.Projekts.Add(project);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}