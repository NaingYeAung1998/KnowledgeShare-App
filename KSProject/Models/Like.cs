using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KSProject.Models
{
    public class Like
    {
        public Guid ID { get; set; }

        public DateTime CreatedOn { get; set; }

        public DateTime ModifiedOn { get; set; }

        //foreignkey
        public Guid PostID { get; set; }

        public Guid ContributorID { get; set; }

        //foreignkey table
        public Post Post { get; set; }

        public Contributor Contributor { get; set; }

        public Like()
        {

        }
    }
}
