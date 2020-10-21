using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Fitness20.Models;
using Fitness20.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;

namespace Fitness20.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<HomeController> _logger;

        public HomeController(ApplicationDbContext context, ILogger<HomeController> logger)
        {
            _context = context;
            _logger = logger;
        }
        public IActionResult Index()
        {
            return View();
        }

        public async Task<IActionResult> ViewStates()
        {
            return View(await _context.States.ToListAsync());
        }

        // GET: Clubs According to State
        public async Task<IActionResult> ViewStateClub(int? id)
        {
            var applicationDbContext = _context.Clubs
                .Include(b => b.State).Where(m => m.StateID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewAllClub()
        {
            return View(await _context.Clubs.ToListAsync());
        }

        public async Task<IActionResult> ViewTypes()
        {
            return View(await _context.ExerciseTypes.ToListAsync());
        }

        public async Task<IActionResult> ViewAllExercises()
        {
            var applicationDbContext = _context.ExerciseInfos
                .Include(b => b.ExerciseType);
            return View(await applicationDbContext.ToListAsync());
        }


        public async Task<IActionResult> ViewExerciseByType(int? id)
        {
            var applicationDbContext = _context.ExerciseInfos
                .Include(b => b.ExerciseType).Where(m => m.ExerciseTypeID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        [Authorize]
        public async Task<IActionResult> ExerciseDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var exercise = await _context.ExerciseInfos
                .Include(b => b.ExerciseType)
                .FirstOrDefaultAsync(m => m.ExerciseID == id);
            if (exercise == null)
            {
                return NotFound();
            }

            return View(exercise);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
