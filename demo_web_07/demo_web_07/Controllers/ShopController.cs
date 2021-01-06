﻿using demo_web_07.Models.BUS;
using System.Web.Mvc;
using System.Linq;
using PagedList;

namespace demo_web_07.Controllers
{
    public class ShopController : Controller
    {
        // GET: Shop
        public ActionResult Index(int page = 1, int pagesize=3)
        {
            var db = ShopOnline.DanhSach().ToPagedList(page, pagesize); 
            return View(db);
        }

        // GET: Shop/Details/5
        public ActionResult Details(string id)
        {
            var db = ShopOnline.ChiTiet(id);
            return View(db);
        }

        // GET: Shop/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Shop/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Shop/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Shop/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Shop/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Shop/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
