@echo off
title DocuQuery AI - Electron ^& React Frontend
echo ====================================================================
echo Starting DocuQuery AI Desktop Client (Electron + React 18)
echo Arya College of Engineering ^& IT - Java PBL 5th Sem
echo ====================================================================

set "PATH=C:\Program Files\nodejs;%PATH%"

cd /d "%~dp0frontend"
call npm run electron:start
pause
