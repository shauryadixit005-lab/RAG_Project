@echo off
title Deploy PBL RAG Project on Render
color 0B
echo ===============================================================================
echo                Arya AI^&DS - PBL RAG Project Render Deployment
echo   Repository: https://github.com/shauryadixit005-lab/RAG_Project
echo ===============================================================================
echo.

echo [Step 1/2] Checking local Git status...
set "PATH=C:\Program Files\Git\cmd;%PATH%"
git status --short

echo.
echo [Step 2/2] Opening Render Dashboard and Deployment Blueprint...
start "" "https://dashboard.render.com/blueprints"
start "" "https://github.com/shauryadixit005-lab/RAG_Project"

echo.
echo ===============================================================================
echo   Instructions to finalize on Render:
echo   1. On the opened Render page, click "New Blueprint Instance".
echo   2. Select "shauryadixit005-lab/RAG_Project".
echo   3. Render will auto-read "render.yaml" and launch your full-stack app!
echo ===============================================================================
pause
