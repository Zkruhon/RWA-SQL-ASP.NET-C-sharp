using Api_Sati;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Api_Sati.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(Djelatnik objUser)
        {
            if (ModelState.IsValid)
            {
                using (PRAEntities db = new PRAEntities())
                {
                    var obj = db.Djelatniks.Where(a => a.Email.Equals(objUser.Email) && a.Zaporka.Equals(objUser.Zaporka)).FirstOrDefault();

                    if (obj != null)
                    {
                        Session["IDDjelatnik"] = obj.IDDjelatnik.ToString();
                        Session["Ime"] = obj.Ime.ToString();
                        Session["Prezime"] = obj.Prezime.ToString();
                        Session["Email"] = obj.Email.ToString();
                        Session["Djelatnik"] = obj;
                        return RedirectToAction("Dashboard", "Account");
                    }
                }
            }

            return View(objUser);
        }
    }
}