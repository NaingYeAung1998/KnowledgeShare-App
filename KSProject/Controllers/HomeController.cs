using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using KSProject.Models;
using KSProject.Entities;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;

namespace KSProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IHostingEnvironment _appEnvironment;


        public HomeController(UserManager<ApplicationUser> userManager, ApplicationDbContext context, IHostingEnvironment appEnvironment)
        {
            _userManager = userManager;
            _appEnvironment = appEnvironment;
            _context = context;
        }
        public IActionResult Index()
        {
            List<object> vPosts = new List<object>();
            List<object> vVideos = new List<object>();
            var channels = _context.Contributors.Take(3);
            var posts = _context.Posts.Take(3).Include(x=>x.Videos).Include(x=>x.Photos);

            foreach(var post in posts)
            {
                foreach(var video in post.Videos)
                {
                    video.Post = null;
                }
            }
            
            var videos = _context.Videos.Take(3);

            foreach(var video in videos)
            {
                var postid = _context.Posts.Where(x => x.ID == video.PostID).FirstOrDefault();
                var data = new
                {
                    video.ApiLink,
                    postid
                };
                vVideos.Add(data);
            }

            ViewBag.Channels = channels;
            ViewBag.Posts = posts;
            ViewBag.Videos = vVideos;

            return View();
        }

        public IActionResult Post()
        {
            var posts = _context.Posts.Include(x => x.Videos).Include(x => x.Photos).Include(x=>x.Contributor);

            foreach (var post in posts)
            {
                foreach (var video in post.Videos)
                {
                    video.Post = null;
                }
            }

            return View(posts.ToList());
        }

        public IActionResult PostDetail(Guid id)
        {
            var post = _context.Posts.Where(x => x.ID == id).Include(x => x.Photos).Include(x => x.Videos).Include(x => x.Contributor).Include(x=>x.Comments);

            List<Comment> cmts = new List<Comment>();

            foreach(var cmt in post.FirstOrDefault().Comments)
            {
                var comment = _context.Comments.Where(x => x.ID == cmt.ID).Include(x => x.Contributor).FirstOrDefault();
                cmts.Add(comment);
            }

            post.FirstOrDefault().Comments = cmts;

            return View(post.ToList());
        }

        public IActionResult ProfileDetail(Guid id)
        {
            var contributor = _context.Contributors.Where(x => x.ID == id).FirstOrDefault();

            return View(contributor);
        }

    }
}
