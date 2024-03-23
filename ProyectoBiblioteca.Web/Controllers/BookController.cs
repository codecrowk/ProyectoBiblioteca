using Microsoft.AspNetCore.Mvc;
namespace Mvc.Controllers
{
  public class BookController : Controller
  {
    public IActionResult Index(){
      return View();
    }
    public IActionResult Update(){
      return View();
    }

    public IActionResult Search(){
      return View();
    }
  }
}