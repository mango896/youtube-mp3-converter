@echo off
REM YouTube MP3 Converter - Quick FFmpeg Installer
REM This installs FFmpeg directly to yt_mp3_converter folder

echo ========================================
echo Installing FFmpeg for YouTube to MP3 Converter
echo ========================================
echo.

REM Get current directory
setlocal enabledelayedexpansion
cd /d "%~dp0"

echo [1/4] Downloading FFmpeg installer...
curl -L -o "ffmpeg_setup.exe" "https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip" || (
    echo Direct download failed, trying GitHub...
    curl -L -o "ffmpeg_setup.exe" "https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip"
)

echo.
echo [2/4] Extracting FFmpeg...
powershell -Command "Expand-Archive -Path ffmpeg_setup.exe -DestinationPath .\ffmpeg_temp -Force"

echo.
echo [3/4] Installing...
move /Y ffmpeg_temp\ffmpeg.exe .
move /Y ffmpeg_temp\ffmpeg.pdb . 2>nul
move /Y ffmpeg_temp\ffmpeg_bitbucket.ni.dll . 2>nul
move /Y ffmpeg_temp\ffmpeg_bsfs.ni.dll . 2>nul
move /Y ffmpeg_temp\ffmpeg_ffdemos_nostdin_ni.dll . 2>nul
move /Y ffmpeg_temp\ffmpeg_ffnvcodec_ni.dll . 2>nul
move /Y ffmpeg_temp\ffmpeg_fxcodecs_ni.dll . 2>nul
move /Y ffmpeg_temp\ffmpeg_mediacodec_ni.dll . 2>nul
move /Y ffmpeg_temp\ffmpeg_avifenc.ni.dll . 2>nul
move /Y ffmpeg_temp\ffmpeg_avifdec.ni.dll . 2>nul
rmdir /s /q ffmpeg_temp

echo.
echo [4/4] Cleaning up...
del /f /q ffmpeg_setup.exe

echo.
echo ========================================
echo FFmpeg installed successfully!
echo Location: %~dp0ffmpeg.exe
echo ========================================
echo.
echo You can now run the YouTube converter!
pause
exit
