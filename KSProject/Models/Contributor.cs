using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KSProject.Models
{
    public class Contributor
    {
        public Guid ID { get; set; }

        public string Name { get; set; }

        public string Phone { get; set; }

        public string Email { get; set; }

        public string Address { get; set; }

        public string Avatar { get; set; }

        //foreignkey
        public string CreatedBy { get; set; }

        //foreignkey table
        public ApplicationUser User { get; set; }

        public ICollection<Post> Posts { get; set; }

        public Contributor()
        {

        }
    }
}
