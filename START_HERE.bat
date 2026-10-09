@echo off
REM =====================================================
REM   YouTube MP3 Converter - One-Click Launcher
REM =====================================================
chcp 65001 >nul
cls

echo.
echo ================================================
echo      🎵 YOUTUBE TO MP3 CONVERTER 🎵
echo ================================================
echo.

REM Check if Python is available
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ ERROR: Python not found!
    echo    Please install Python from https://www.python.org/
    pause
    exit /b 1
)

echo ✅ Python found!

REM Check if yt-dlp is installed
python -c "import yt_dlp" >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ⚠️  WARNING: yt-dlp not installed!
    echo Installing...
    pip install yt-dlp
) else (
    echo ✅ yt-dlp is ready!
)

REM Check FFmpeg
ffmpeg -version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ⚠️  WARNING: FFmpeg not found in PATH
    echo    Download and install from: https://www.gyan.dev/ffmpeg/builds/
) else (
    echo ✅ FFmpeg is ready for audio conversion!
)

echo.
echo ================================================
echo    Ready to convert!
echo ================================================
echo.
echo 📁 The HTML interface is at:
echo    converter.html (just double-click in File Explorer)
echo.
echo 💻 To run the Python converter:
echo    python scripts/simple_gui.py
echo.
pause

REM Run the GUI converter
python scripts/simple_gui.py