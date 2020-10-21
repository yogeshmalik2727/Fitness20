using System;
using System.Collections.Generic;
using System.Text;
using Fitness20.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Fitness20.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<State> States { get; set; }
        public DbSet<ExerciseType> ExerciseTypes { get; set; }
        public DbSet<Club> Clubs { get; set; }
        public DbSet<ExerciseInfo> ExerciseInfos { get; set; }
    }
}
