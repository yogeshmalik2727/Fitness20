using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Fitness20.Models
{
    public class Club
    {
        [Key]
        public int ClubID { get; set; }

        [Required]
        [StringLength(100)]
        public string ClubName { get; set; }

        [Required]
        [StringLength(200)]
        public string AddressLine1 { get; set; }

        [Required]
        [StringLength(200)]
        public string AddressLine2 { get; set; }

        [Required]
        [StringLength(20)]
        public string ContactNo { get; set; }

        [Required]
        public int StateID { get; set; }

        public State State { get; set; }
    }
}
