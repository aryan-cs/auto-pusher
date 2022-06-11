@echo off

echo welcome!

set /p id="enter local path > "

echo preparing to push all files in %id%

cd %id%

set /p repo="enter repo url > "

git init

git add --all

set /p message="enter commit message > "
set /p branch="enter branch to commit to > "

git commit -m "%message%"

git remote add origin %repo%

:PROMPT
set/p sure=are you sure you want to push these changes? [Y/N] 
if /i "%sure%" NEQ "Y" goto end

git push origin %branch%

echo successfully pushed changes to repo


:END

echo goodbye!

pause