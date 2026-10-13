@echo off
title DocuQuery AI - Spring Boot 3 Backend
echo ====================================================================
echo Starting DocuQuery AI Spring Boot 3 Backend (Java 21)
echo Arya College of Engineering ^& IT - Java PBL 5th Sem
echo Mentor: Er. Ram Babu Buri
echo ====================================================================

set "JAVA_HOME=C:\Program Files\Microsoft\jdk-21.0.12.101-hotspot"
set "PATH=%JAVA_HOME%\bin;%~dp0tools\apache-maven-3.9.9\bin;%PATH%"

cd /d "%~dp0backend"
call mvn spring-boot:run
pause
