using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Neighborly_3.Models;
using Microsoft.AspNet.Identity;

namespace Neighborly_3.Controllers
{
    public class Task2Controller : Controller
    {
        private FinalProjectEntities db = new FinalProjectEntities();

        // GET: Task2
        public ActionResult Index(string search, string sort)
        {
            var items = from s in db.Task2
                           select s;
            //var items = db.Task2.Include(i => i.TaskID);

            if (!String.IsNullOrEmpty(search))
            {
                items = items.Where(t => t.TaskTitle.Contains(search)
                                       || t.TaskDescription.Contains(search));
            }

            if (sort == "Descending")
            {
                items = from item in items
                        orderby item.TimeStamp descending
                        select item;
            }
            else
            {
                items = from item in items
                        orderby item.TimeStamp ascending
                        select item;
            }
            ViewBag.userID = User.Identity.GetUserId();
            return View(items.ToList());
        }

        // GET: Task2/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task2 task2 = db.Task2.Find(id);
            if (task2 == null)
            {
                return HttpNotFound();
            }
            return View(task2);
        }

        // GET: Task2/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Task2/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TaskID,TaskDescription,TaskTitle,IsDone,TimeStamp,IsAssigned,HelpProviderID,TaskCreatorID")] Task2 task2)
        {
            if (ModelState.IsValid)
            {
                db.Task2.Add(task2);

                task2.IsAssigned = false;
                task2.IsDone = false;
                task2.TaskCreatorID = User.Identity.GetUserId();
                task2.TimeStamp = DateTime.Now;
                
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(task2);
        }

        // GET: Task2/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task2 task2 = db.Task2.Find(id);
            if (task2 == null)
            {
                return HttpNotFound();
            }
            return View(task2);
        }

        // POST: Task2/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TaskID,TaskDescription,TaskTitle,IsDone,TimeStamp,IsAssigned,HelpProviderID,TaskCreatorID")] Task2 task2)
        {
            if (ModelState.IsValid)
            {
                db.Entry(task2).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(task2);
        }

        // GET: Task2/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Task2 task2 = db.Task2.Find(id);
            if (task2 == null)
            {
                return HttpNotFound();
            }
            return View(task2);
        }

        // POST: Task2/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Task2 task2 = db.Task2.Find(id);
            db.Task2.Remove(task2);
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
