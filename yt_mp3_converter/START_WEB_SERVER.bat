@echo off
title YouTube to MP3 Converter - START SERVER
echo ============================================================
echo   [MUSIC NOTE] YouTube MP3 Web Converter Server
echo ============================================================
echo.
echo [LIGHT BULB] Starting the server...
echo [PHONE] Open your browser and visit: http://localhost:5000
echo [CHECKMARK] The web interface now works with real backend!
echo ============================================================
echo.
cd /d %~dp0

python server.py

if errorlevel 1 (
    echo.
    echo ERROR: Server failed to start!
    echo Make sure Python is installed and this folder has read/write permissions.
    pause
)