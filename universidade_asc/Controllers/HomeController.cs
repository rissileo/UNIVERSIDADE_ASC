using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using universidade_asc.DBEntities;
using universidade_asc.Helper;
using universidade_asc.Models;

namespace universidade_asc.Controllers
{
    public class HomeController : Controller
    {
        Log lg = new Log();
        public IActionResult Index()
        {
            return View();
        }

    }
}