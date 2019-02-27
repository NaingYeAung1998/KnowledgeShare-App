using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KSProject.Models
{
    public class Post
    {
        public Guid ID { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public DateTime CreatedOn { get; set; }

        public DateTime ModifiedOn { get; set; }

        //foreignkey
        public Guid ContributorID { get; set; }

        //foreignkey table
        public Contributor Contributor { get; set; }

        //
        public ICollection<Photo> Photos { get; set; }

        public ICollection<Video> Videos { get; set; }

        public ICollection<Like> Likes { get; set; }

        public ICollection<Comment> Comments { get; set; }

        public Post()
        {

        }
    }
}
