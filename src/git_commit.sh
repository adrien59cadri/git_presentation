
sh git_presentation/src/git_init.sh

cd game

echo "create a readme file and add to index"
touch readme.txt
git add readme.txt

echo "Appuyer la touche <Entrée> pour continuer..."
read touche
echo "commit it"
git commit readme.txt -m"add a readme file to the main branch"

echo "Appuyer la touche <Entrée> pour continuer..."
read touche
echo "now publish it on the server"
echo "as this is the fist commit there is no branch - which is a list of commit - on the server"
echo "we have to PUBLISH the branch, not only push, push is when you sync a commit to an existing remote branch"
echo "Appuyer la touche <Entrée> pour continuer..."
read touche
echo ""
echo "when you publish you use push AND precise where to push"
echo "here I push on the origin remote repository (i.e. the one I cloned) 
to a branch named master, as mine is called master because it is the first one"
echo "Appuyer la touche <Entrée> pour continuer..."
read touche
git push origin master



echo "Appuyer la touche <Entrée> pour continuer..."
read touche
echo "git branch"
git branch


echo "NOTE it is useless to use git commands like status in a bare repository"
echo "Appuyer la touche <Entrée> pour continuer..."
read touche
echo "clean"
cd ..
rm game -rf
rm game.git -rf