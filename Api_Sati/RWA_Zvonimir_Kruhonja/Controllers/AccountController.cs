using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Api_Sati.Models;

namespace Api_Sati.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Dashboard()
        {
            if (Session["IDDjelatnik"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Login");
            }
        }

        [HttpPost]
        public ActionResult Dashboard(Password login)
        {
            using (PRAEntities db = new PRAEntities())
            {
                var detail = db.Djelatniks.Where(log => log.Zaporka == login.Pwd).FirstOrDefault();
                var defined = login.Pwd;

                if (detail != null && defined != null)
                {
                    var userDetail = db.Djelatniks.FirstOrDefault(c => c.Email == detail.Email);
                    var defDetail = login.NewPwd;

                    if (userDetail != null && defDetail != null)
                    {
                        userDetail.Zaporka = login.NewPwd;
                        db.SaveChanges();
                        ViewBag.Message = "Success";
                    }
                    else
                    {
                        ViewBag.Message = "Failed to update password";
                    }

                }
                else
                {
                    ViewBag.Message = "Failed to update password";
                }
            }

            return RedirectToAction("Index", "Home");
        }
    
    }
}