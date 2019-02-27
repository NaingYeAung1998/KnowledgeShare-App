using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KSProject.Models
{
    public class Photo
    {
        public Guid ID { get; set; }

        public string Name { get; set; }

        public string Link { get; set; }

        //foreignkey
        public Guid PostID { get; set; }

        //foreignkey table
        public Post Post { get; set; }

        public Photo()
        {

        }

    }
}
