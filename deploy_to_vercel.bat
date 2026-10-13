@echo off
title Deploy PBL RAG Project on Vercel
color 0B
echo ===============================================================================
echo                Arya AI^&DS - PBL RAG Project Vercel Deployment
echo   Fast, Global Serverless Deployment (Frontend + RAG APIs)
echo ===============================================================================
echo.
set "PATH=C:\Program Files\nodejs;%PATH%"

echo Choose deployment method:
echo   [1] Direct CLI Deploy (Deploys right now from your machine using Vercel CLI)
echo   [2] Web Dashboard Deploy (Opens vercel.com/new to import repository)
echo.
set /p choice="Enter choice [1 or 2]: "

if "%choice%"=="1" (
    echo.
    echo Launching Vercel CLI...
    echo (If not logged in, Vercel will ask you to login once in your browser)
    echo.
    call "%~dp0\tools\run_vercel.cmd"
) else (
    echo.
    echo Opening Vercel Dashboard in your browser...
    start "" "https://vercel.com/new"
)

pause
