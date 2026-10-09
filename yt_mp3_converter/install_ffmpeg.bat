@echo off
REM ========================================
REM YouTube MP3 Converter - FFmpeg Installer
REM ========================================
echo.
echo ========================================
echo Installing FFmpeg for YouTube to MP3 Converter
echo ========================================
echo.

cd /d "%~dp0yt_mp3_converter"

echo [1/4] Downloading FFmpeg (this may take a few minutes)...
curl -L -o "ffmpeg.zip" "https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip" || (
    echo Direct download failed, trying GitHub mirror...
    curl -L -o "ffmpeg.zip" "https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip"
)

if not exist "ffmpeg.zip" (
    echo ERROR: Failed to download FFmpeg. Please try manually from https://ffmpeg.org/download.html#build-windows
    pause
    exit /b 1
)

echo [2/4] Extracting FFmpeg...
powershell -Command "Expand-Archive -Path ffmpeg.zip -DestinationPath .\ffmpeg_temp -Force"

echo [3/4] Installing files...
move /Y ffmpeg_temp\ffmpeg.exe . 2>nul
rmdir /s /q ffmpeg_temp

echo [4/4] Cleaning up...
del /f /q ffmpeg.zip

echo.
echo ========================================
echo SUCCESS! FFmpeg is now installed.
echo Location: %CD%\ffmpeg.exe
echo ========================================
echo.
echo Next steps:
echo 1. Run "python server.py" to start the converter
echo 2. Open http://localhost:5000 in your browser
echo 3. Paste a YouTube URL and convert!
echo ========================================
echo.

pause
exit
