askUserInput ()
{
  local message=$1
  local externalVarible=$2 #Return a string to an external varible
  printf "$message"
  read -r -a $externalVarible
}

## Import Global Variables
source ./env.zshenv

declare newLine=$"\n"
declare controlerName=""
## Create a list of endpoints
declare endPoints=()

## Ask for controller information directly in zsh command
askUserInput "Enter controler name: " controlerName
askUserInput "Enter endpoints: " endPoints

declare entriesString=""
createControlerEntries ()
{
    for i in "${endPoints[@]}"
    do
      entriesString+="public IActionResult $i(){${newLine}
        return View();${newLine}
      }${newLine}"
    done
}; createControlerEntries ## Trying to create a auto-call fuction, like JS

declare controlerSintaxis="using Microsoft.AspNetCore.Mvc; ${newLine}
namespace Mvc.Controllers${newLine}
{${newLine}
  public class ${controlerName}Controller : Controller${newLine}
  {${newLine}
    ${entriesString}
  }${newLine}
}"${newLine}

## Create new file for controller 
echo -e ${controlerSintaxis} > ${MVC_ROOT_DIR}/Controllers/${controlerName}Controller.cs

## Create folder structure in Views
declare paramaters=(${controlerName[*]} ${endPoints[*]})
./CreateViewFolder.zsh ${paramaters[*]}
