using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KSProject.Models
{
    public class Comment
    {
        public Guid ID { get; set; }

        public string CommentText { get; set; }

        public DateTime CreatedOn { get; set; }

        public DateTime ModifiedOn { get; set; }

        //foreignkey
        public Guid ContributorID { get; set; }

        public Guid PostID { get; set; }

        //foreignkey table
        public Contributor Contributor { get; set; }

        public Post Post { get; set; }

        public Comment()
        {

        }
    }
}
