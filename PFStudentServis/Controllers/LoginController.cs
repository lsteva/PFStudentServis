using PFStudentServis.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PFStudentServis.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Autorizacija(PFStudentServis.Models.Student studentModel)
        {
            using (PFServisEntities db = new PFServisEntities())
            {
                var brojIndeksaDetalji = db.Students.Where(x => x.BrojIndeksa == studentModel.BrojIndeksa && x.JMBG == studentModel.JMBG).FirstOrDefault();
                if (brojIndeksaDetalji == null)
                {
                    studentModel.LoginErrorMessage = "Pogrešan broj indeksa ili JMBG.";
                    return View("Index", studentModel);
         }
                else
                { Session["userID"] = brojIndeksaDetalji.UserID;
                    Session["brojIndeksa"] = brojIndeksaDetalji.Ime;
                    Session["brojIndeksa1"] = brojIndeksaDetalji.Prezime;
                }
                return RedirectToAction("Index", "Home");
            }

 
        }
        public ActionResult LogOut()
        {
            int brojIndeksa = (int)Session["userID"];
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }
       
    }
}