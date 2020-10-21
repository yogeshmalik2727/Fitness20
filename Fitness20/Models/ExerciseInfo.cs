using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Fitness20.Models
{
    public class ExerciseInfo
    {
        [Key]
        public int ExerciseID { get; set; }

        [Required]
        [StringLength(100)]
        public string ExerciseName { get; set; }

        [Required]
        [StringLength(400)]
        public string Details { get; set; }

        [Required]
        public int Duration { get; set; }

        [Required]
        public int NumberOfSet { get; set; }

        [Required]
        public int ExerciseTypeID { get; set; }

        public ExerciseType ExerciseType { get; set; }

    }
}
