
echo "create a public repo"
echo "this repo will not be usable to work on it, i.e. there is no working copy: because of the --bare option"
echo "I add '.git' at the end of the name to recognize (convention) that it is a public one"
git init --bare game.git





echo "here is the repository"
ls
echo "It contains the git informations"
ls game.git/


echo "Appuyer la touche <Entrée> pour continuer..."
read touche


echo "create a clone of the public one"
echo "I do exactly the same without the '.git' and without the --bare option"
git clone game.git game

echo "Appuyer la touche <Entrée> pour continuer..."
read touche
echo "here is the repository"
ls
echo "It contains the .git subfolder folder"
ls game

cd game
echo "which contains the git informations"
ls .git
echo "Appuyer la touche <Entrée> pour continuer..."
read touche

echo "some basic git commands"
echo "git status"
git status

