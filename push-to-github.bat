@echo off
setlocal
echo ===================================================================
echo     ✦ CRUMBLE ^& CREAM BAKERY - INITIALIZE ^& PUSH TO GITHUB ✦
echo ===================================================================

if "%~1"=="" (
    echo Usage:
    echo   push-to-github.bat ^<your-github-repo-url^>
    echo.
    echo Example:
    echo   push-to-github.bat https://github.com/myusername/crumble-and-cream-bakery.git
    echo.
    exit /b 1
)

set REPO_URL=%~1

echo [1/5] Initializing Git repository...
git init

echo [2/5] Staging project files...
git add .

echo [3/5] Creating initial commit...
git commit -m "feat: Full-stack Crumble & Cream Java and React bakery project"

echo [4/5] Setting main branch...
git branch -M main

echo [5/5] Connecting remote and pushing to %REPO_URL%...
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git push -u origin main

echo.
echo ===================================================================
echo     ✦ Successfully uploaded to GitHub! ✦
echo ===================================================================
endlocal
