using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Fitness20.Data;
using Fitness20.Models;
using Microsoft.AspNetCore.Authorization;

namespace Fitness20.Controllers
{
    [Authorize(Roles = "administrator")]
    public class ExerciseInfosController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ExerciseInfosController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: ExerciseInfos
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.ExerciseInfos.Include(e => e.ExerciseType);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: ExerciseInfos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var exerciseInfo = await _context.ExerciseInfos
                .Include(e => e.ExerciseType)
                .FirstOrDefaultAsync(m => m.ExerciseID == id);
            if (exerciseInfo == null)
            {
                return NotFound();
            }

            return View(exerciseInfo);
        }

        // GET: ExerciseInfos/Create
        public IActionResult Create()
        {
            ViewData["ExerciseTypeID"] = new SelectList(_context.ExerciseTypes, "ExerciseTypeID", "ExerciseTypeName");
            return View();
        }

        // POST: ExerciseInfos/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ExerciseID,ExerciseName,Details,Duration,NumberOfSet,ExerciseTypeID")] ExerciseInfo exerciseInfo)
        {
            if (ModelState.IsValid)
            {
                _context.Add(exerciseInfo);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ExerciseTypeID"] = new SelectList(_context.ExerciseTypes, "ExerciseTypeID", "ExerciseTypeName", exerciseInfo.ExerciseTypeID);
            return View(exerciseInfo);
        }

        // GET: ExerciseInfos/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var exerciseInfo = await _context.ExerciseInfos.FindAsync(id);
            if (exerciseInfo == null)
            {
                return NotFound();
            }
            ViewData["ExerciseTypeID"] = new SelectList(_context.ExerciseTypes, "ExerciseTypeID", "ExerciseTypeName", exerciseInfo.ExerciseTypeID);
            return View(exerciseInfo);
        }

        // POST: ExerciseInfos/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ExerciseID,ExerciseName,Details,Duration,NumberOfSet,ExerciseTypeID")] ExerciseInfo exerciseInfo)
        {
            if (id != exerciseInfo.ExerciseID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(exerciseInfo);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ExerciseInfoExists(exerciseInfo.ExerciseID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ExerciseTypeID"] = new SelectList(_context.ExerciseTypes, "ExerciseTypeID", "ExerciseTypeName", exerciseInfo.ExerciseTypeID);
            return View(exerciseInfo);
        }

        // GET: ExerciseInfos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var exerciseInfo = await _context.ExerciseInfos
                .Include(e => e.ExerciseType)
                .FirstOrDefaultAsync(m => m.ExerciseID == id);
            if (exerciseInfo == null)
            {
                return NotFound();
            }

            return View(exerciseInfo);
        }

        // POST: ExerciseInfos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var exerciseInfo = await _context.ExerciseInfos.FindAsync(id);
            _context.ExerciseInfos.Remove(exerciseInfo);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ExerciseInfoExists(int id)
        {
            return _context.ExerciseInfos.Any(e => e.ExerciseID == id);
        }
    }
}
