using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Fitness20.Models
{
    public class ExerciseType
    {
        [Key]
        public int ExerciseTypeID { get; set; }

        [Required]
        [StringLength(100)]
        public string ExerciseTypeName { get; set; }

        public virtual ICollection<ExerciseInfo> Exercises { get; set; }
    }
}
