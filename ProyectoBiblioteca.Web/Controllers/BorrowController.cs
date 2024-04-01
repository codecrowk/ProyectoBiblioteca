using Microsoft.AspNetCore.Mvc; 
namespace Mvc.Controllers
{
  public class BorrowController : Controller
  {
    public IActionResult Seach(){
      return View();
    }
    
    public IActionResult Info(){
      return View();
    }

    // Borrow book
    public IActionResult Crete(){
      return View();
    }

    // Renovate a borrow book
    public IActionResult Update(){
      return View();
    }

    // Return a borrow book
    public IActionResult Delete(){
      return View();
    }
  }
}