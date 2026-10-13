@echo off
title Push PBL RAG Project to GitHub
color 0A
echo ===============================================================================
echo                Arya AI^&DS - PBL RAG Project GitHub Deployment
echo   Repository: https://github.com/shauryadixit005-lab/RAG_Project.git
echo ===============================================================================
echo.
set "PATH=C:\Program Files\Git\cmd;%PATH%"

echo [Step 1/3] Pushing main branch (replacing initial placeholder README with project code)...
git push -u origin main --force

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo -------------------------------------------------------------------------------
    echo [ACTION REQUIRED]
    echo If a browser or Windows popup opened asking to "Sign in with GitHub",
    echo please complete the login in your browser.
    echo.
    echo Alternatively, if using a GitHub Personal Access Token (PAT):
    echo git remote set-url origin https://<TOKEN>@github.com/shauryadixit005-lab/RAG_Project.git
    echo -------------------------------------------------------------------------------
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo [Step 2/3] Pushing all 5 member branches...
git push origin --all --force

echo.
echo [Step 3/3] Pushing all release tags...
git push origin --tags

echo.
echo ===============================================================================
echo   [SUCCESS] All code and branches pushed to GitHub!
echo.
echo   NEXT STEP FOR RENDER:
echo   1. Go to your Render Dashboard (the page in your screenshot).
echo   2. Click the "Manual Deploy" button at the top right.
echo   3. Select "Clear build cache & deploy".
echo ===============================================================================
pause
