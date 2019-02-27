using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using KSProject.Entities;
using KSProject.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace KSProject.Controllers
{
    public class ProfileController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IHostingEnvironment _appEnvironment;


        public ProfileController(UserManager<ApplicationUser> userManager, ApplicationDbContext context, IHostingEnvironment appEnvironment)
        {
            _userManager = userManager;
            _appEnvironment = appEnvironment;
            _context = context;
        }

        public IActionResult GetProfile()
        {
            var userId = _userManager.GetUserId(User);
            var contributor = _context.Contributors.Where(x => x.CreatedBy == userId).FirstOrDefault();
            return Ok(contributor);
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Notification()
        {
            var userId = _userManager.GetUserId(User);
            var contributor = _context.Contributors.Where(x => x.CreatedBy == userId).FirstOrDefault();

            var notifications = _context.Notifications.Where(x => x.OwnerId == contributor.ID).Include(x=>x.Contributor);
            return View(notifications.ToList());
        }
        
        public IActionResult Edit()
        {
            var userId = _userManager.GetUserId(User);
            var contributor = _context.Contributors.Where(x => x.CreatedBy == userId).FirstOrDefault();

            return View(contributor);
        }

        [HttpPost]
        public void Edit(Contributor model)
        {
            var oldModel = _context.Contributors.Find(model.ID);

            oldModel.Name = model.Name;
            oldModel.Phone = model.Phone;
            oldModel.Email = model.Email;
            oldModel.Address = model.Address;
            

            if (model.Avatar != null)
            {
                string result = Regex.Replace(model.Avatar, "^data:image/[a-zA-Z]+;base64,", string.Empty);
                byte[] byt = Convert.FromBase64String(result);

                string filename = Guid.NewGuid().ToString() + ".jpg";
                var save_path = Path.Combine(_appEnvironment.WebRootPath, "images\\Contributors\\");

                string img_path = Path.Combine(save_path, filename);
                System.IO.File.WriteAllBytes(img_path, byt);
                //physical image saving ends

                oldModel.Avatar = filename;
            }

            _context.Contributors.Update(oldModel);
            _context.SaveChanges();
        }
    }
}