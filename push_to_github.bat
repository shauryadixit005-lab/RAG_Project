@echo off
title Push PBL RAG Project to GitHub
color 0A
echo ===============================================================================
echo                Arya AI^&DS - PBL RAG Project GitHub Deployment
echo   Repository: https://github.com/shauryadixit005-lab/RAG_Project.git
echo ===============================================================================
echo.
set "PATH=C:\Program Files\Git\cmd;%PATH%"

echo [1/3] Verifying current local branches...
git branch

echo.
echo [2/3] Pushing all branches (main + 5 member branches) to remote repository...
git push -u origin --all

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo -------------------------------------------------------------------------------
    echo [INFO] GitHub Credential Manager may prompt for sign-in or a Personal Access Token.
    echo [TIP] If you prefer using a Personal Access Token (PAT), run:
    echo       git remote set-url origin https://<YOUR_GITHUB_TOKEN>@github.com/shauryadixit005-lab/RAG_Project.git
    echo       git push -u origin --all
    echo -------------------------------------------------------------------------------
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [3/3] Pushing all release tags...
git push origin --tags

echo.
echo ===============================================================================
echo   [SUCCESS] Deployment complete!
echo   Visit your branches online at:
echo   https://github.com/shauryadixit005-lab/RAG_Project/branches
echo ===============================================================================
pause
