del .gitmodules
git add .
git rm --cached _gallery _bibliography _notes _quotes
del _gallery _bibliography _notes _quotes
cd _includes
git rm --cached extras text
del extras text
git add .
git commit -m "delete submodules"
git push origin
cd ..

git submodule add https://github.com/greek-salata/_gallery
git submodule add https://github.com/greek-salata/_quotes
git submodule add https://github.com/greek-salata/images
git submodule add https://github.com/greek-salata/bibliography _bibliography
git submodule add https://github.com/greek-salata/notes _notes
cd _includes
git submodule add https://github.com/greek-salata/extras
git submodule add https://github.com/greek-salata/text
cd ..
git add .
git commit -m "add new sub modules"
git push origin