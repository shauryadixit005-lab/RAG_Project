@echo off
title Push PBL RAG Project to GitHub
color 0A
echo ===============================================================================
echo                Arya AI^&DS - PBL RAG Project GitHub Deployment
echo   Repository: https://github.com/shauryadixit005-lab/RAG_Project.git
echo ===============================================================================
echo.
set "PATH=C:\Program Files\Git\cmd;%PATH%"

echo [Step 1/2] Pushing all branches (main, develop, and feature branches)...
git push -u origin --all

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo -------------------------------------------------------------------------------
    echo [INFO] If GitHub prompted for credentials, please complete the sign-in prompt.
    echo [TIP] You can also push using a GitHub Personal Access Token (PAT):
    echo       git remote set-url origin https://<YOUR_GITHUB_TOKEN>@github.com/shauryadixit005-lab/RAG_Project.git
    echo -------------------------------------------------------------------------------
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [Step 2/2] Pushing all release tags...
git push origin --tags

echo.
echo ===============================================================================
echo   [SUCCESS] Deployment complete!
echo   Check your live repository at:
echo   https://github.com/shauryadixit005-lab/RAG_Project
echo ===============================================================================
pause
