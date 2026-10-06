@echo off
setlocal
cd /d "%~dp0"
title StageLab V3 - Hamlet: Stage in Motion
echo.
echo   StageLab - Hamlet: Stage in Motion
echo.
echo   Starting a local server and opening the browser...
echo   Keep this window open during class. Close it to stop.
echo.
where powershell >nul 2>nul
if errorlevel 1 goto direct
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\server.ps1"
if not errorlevel 1 goto end

:direct
echo.
echo   The local server could not start on this computer.
echo   Opening index.html directly instead - the lesson works the same way.
echo.
start "" "%~dp0index.html"
timeout /t 6 >nul

:end
endlocal
