@echo off
REM YouTube MP3 Converter - FFmpeg Installer
REM This script automatically downloads and installs FFmpeg

echo ========================================
echo Installing FFmpeg for YouTube to MP3 Converter
echo ========================================
echo.

REM Download FFmpeg Windows Build (portable version)
echo [1/4] Downloading FFmpeg...
cd /d %~dp0
curl -L -o ffmpeg.exe https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip

echo.
echo [2/4] Extracting FFmpeg...
powershell -Command "Expand-Archive -Path ffmpeg.exe -DestinationPath .\ffmpeg_temp -Force"

echo.
echo [3/4] Moving files...
move ffmpeg_temp\ffmpeg.exe .
rmdir /s /q ffmpeg_temp
del ffmpeg.exe

echo.
echo [4/4] Done! FFmpeg is now installed at: %~dp0ffmpeg.exe
echo.
echo ========================================
echo Next steps:
echo 1. Restart the server (python server.py)
echo 2. Open http://localhost:5000 in your browser
echo 3. Enter a YouTube URL and convert!
echo ========================================
echo.
pause
