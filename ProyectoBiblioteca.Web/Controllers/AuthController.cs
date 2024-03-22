using Microsoft.AspNetCore.Mvc;
namespace Mvc.Controllers
{
    public class Auth : Controller
    {
        public IActionResult Index(){
            return View();
        }
    }
}