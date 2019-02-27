using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace KSProject.Models
{
    public class Notification
    {
        [Required]
        public Guid Id { get; set; }

        public string Link { get; set; }

        public bool IsSeen { get; set; }

        [Required]
        [EnumDataType(typeof(NotificationTypes))]
        public NotificationTypes NotificationType { get; set; }

        //foreignkey
        public Guid NotifiedBy { get; set; }

        public Guid OwnerId { get; set; }

        [ForeignKey("NotifiedBy")]
        public Contributor Contributor { get; set; }

        public Notification()
        {

        }

        public enum NotificationTypes
        {
            follow,
            follower,
            comment,
            like

        }
        
    }
}
