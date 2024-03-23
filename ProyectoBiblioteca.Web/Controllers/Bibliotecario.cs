using Microsoft.AspNetCore.Mvc;
namespace Mvc.Controllers
{
    public class BibliotecarioController : Controller
    {
        public IActionResult Index(){
            return View();
        }
        public IActionResult Searchbook(){
            return View();
        }
         public IActionResult Registerbook(){
            return View();
        }

    }
}