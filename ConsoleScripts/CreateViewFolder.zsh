## Import Global Variables
source ./env.zshenv

declare totalArguments=$#
declare viewFolderName=$1
declare argumentList=($@)

## Firt argument of zsh is the controler name, after that comes view entries
declare firstArgument=1

# ../ProyectoBiblioteca/ProyectoBiblioteca.Web/Views
declare viewsDir=${MVC_ROOT_DIR}/Views/${viewFolderName}
mkdir -p ${viewsDir}
for ((i = firstArgument; i < totalArguments; i++)); 
do
  declare argument=${argumentList[$i]}
  touch ${viewsDir}/${argument}.cshtml
  echo "${argumentList[$i]}"
done
echo ${argumentList[2]}
