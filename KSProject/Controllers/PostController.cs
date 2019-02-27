using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using KSProject.Entities;
using KSProject.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace KSProject.Controllers
{
    [Authorize]
    public class PostController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IHostingEnvironment _appEnvironment;


        public PostController(UserManager<ApplicationUser> userManager, ApplicationDbContext context, IHostingEnvironment appEnvironment)
        {
            _userManager = userManager;
            _appEnvironment = appEnvironment;
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Post model)
        {
            var userId = _userManager.GetUserId(User);
            var contributorId = _context.Contributors.Where(x => x.CreatedBy == userId).FirstOrDefault().ID;

            model.ID = Guid.NewGuid();
            model.ContributorID = contributorId;
            model.CreatedOn = DateTime.UtcNow.AddHours(6).AddMinutes(30);
            model.ModifiedOn = DateTime.UtcNow.AddHours(6).AddMinutes(30);

            var count = 0;

            foreach (var photo in model.Photos)
            {
                //physical image saving starts
                count++;

                string result = Regex.Replace(photo.Link, "^data:image/[a-zA-Z]+;base64,", string.Empty);
                byte[] byt = Convert.FromBase64String(result);

                string filename = Guid.NewGuid().ToString() + ".jpg";
                var save_path = Path.Combine(_appEnvironment.WebRootPath, "images\\Posts\\");

                string img_path = Path.Combine(save_path, filename);
                System.IO.File.WriteAllBytes(img_path, byt);
                //physical image saving ends

                //save image name in database
                photo.ID = Guid.NewGuid();
                photo.Name = model.Title+"Fig-"+count;
                photo.Link = filename;
                photo.PostID = model.ID;
            }

            _context.Posts.Add(model);
            

            Notifier notifier = new Notifier();
            notifier.OwnerId = model.ID;
            notifier.NotifiedBy = contributorId;
            notifier.NotifierType = Notifier.NotifierTypes.post;
            _context.Notifiers.Add(notifier);

            _context.SaveChanges();

            return Ok(model.ID);
        }

        public IActionResult Detail(Guid Id)
        {
            Post post = _context.Posts.Where(x => x.ID == Id).FirstOrDefault();
            if (post == null)
            {
                return NotFound();
            }

            return View(post);
        }

        public ActionResult Like(Like like)
        {
            var userId = _userManager.GetUserId(User);
            var contributorId = _context.Contributors.Where(x => x.CreatedBy == userId).FirstOrDefault().ID;

            like.ID = Guid.NewGuid();
            like.ContributorID = contributorId;
            like.CreatedOn = DateTime.UtcNow.AddHours(6).AddMinutes(30);

            _context.Likes.Add(like);
            _context.SaveChanges();

            return View();
        }

        public void Comment(Comment comment)
        {
            var userId = _userManager.GetUserId(User);
            var contributorId = _context.Contributors.Where(x => x.CreatedBy == userId).FirstOrDefault().ID;

            comment.ID = Guid.NewGuid();
            comment.ContributorID = contributorId;
            comment.CreatedOn = DateTime.UtcNow.AddHours(6).AddMinutes(30);

            var postownerId = _context.Posts.Where(x => x.ID == comment.PostID).FirstOrDefault().ContributorID;

            _context.Comments.Add(comment);

            if (postownerId != comment.ContributorID)
            {
                Notification noti = new Notification();
                noti.Id = Guid.NewGuid();
                noti.OwnerId = postownerId;
                noti.NotifiedBy = comment.ContributorID;
                noti.NotificationType = Notification.NotificationTypes.comment;
                noti.IsSeen = false;
                noti.Link = comment.PostID.ToString();
                _context.Notifications.Add(noti);
            }

            

            _context.SaveChanges();

        }
    }
}