using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PFStudentServis.Models;

namespace PFStudentServis.Controllers
{
    public class NastavniksController : Controller
    {
        private PFServisEntities db = new PFServisEntities();

        // GET: Nastavniks
        public ActionResult Index()
        {
            return View(db.Nastavniks.ToList());
        }

        // GET: Nastavniks/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nastavnik nastavnik = db.Nastavniks.Find(id);
            if (nastavnik == null)
            {
                return HttpNotFound();
            }
            return View(nastavnik);
        }

        // GET: Nastavniks/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Nastavniks/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Ime,Prezime,JMBG,DatumRodjenja")] Nastavnik nastavnik)
        {
            if (ModelState.IsValid)
            {
                db.Nastavniks.Add(nastavnik);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nastavnik);
        }

        // GET: Nastavniks/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nastavnik nastavnik = db.Nastavniks.Find(id);
            if (nastavnik == null)
            {
                return HttpNotFound();
            }
            return View(nastavnik);
        }

        // POST: Nastavniks/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Ime,Prezime,JMBG,DatumRodjenja")] Nastavnik nastavnik)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nastavnik).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nastavnik);
        }

        // GET: Nastavniks/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Nastavnik nastavnik = db.Nastavniks.Find(id);
            if (nastavnik == null)
            {
                return HttpNotFound();
            }
            return View(nastavnik);
        }

        // POST: Nastavniks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Nastavnik nastavnik = db.Nastavniks.Find(id);
            db.Nastavniks.Remove(nastavnik);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
