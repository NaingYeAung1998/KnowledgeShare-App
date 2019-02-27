using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace KSProject.Models
{
    public class Notifier
    {
        [Required]
        public Guid Id { get; set; }

        [Required]
        [EnumDataType(typeof(NotifierTypes))]
        public NotifierTypes NotifierType { get; set; }

        public DateTime CreatedOn { get; set; }
        
        public DateTime ModifiedOn { get; set; }

        //foreignkey
        public Guid NotifiedBy { get; set; }

        public Guid OwnerId { get; set; }

        //foriegnkey table
        [ForeignKey("NotifiedBy")]
        public Contributor Contributor { get; set; }

        public Notifier()
        {

        }

        public enum NotifierTypes
        {
            contributor,
            post
        }
    }
}
