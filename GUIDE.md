# YouTube MP3 Converter - Quick Start Guide

## 🚀 Fastest Way to Use

### Option 1: Open in Browser (Demo Interface)
Simply double-click **`converter.html`** in your browser to see the user-friendly interface.

### Option 2: Run Python Script (Full Conversion)

#### Step 1: Install Requirements
```bash
pip install yt-dlp
```

#### Step 2: Install FFmpeg (Required for audio conversion)
Download from: https://ffmpeg.org/download.html
Add to PATH after installation.

#### Step 3: Run the Converter
```bash
# Using Python directly
python scripts/simple_gui.py

# Or on Windows, use the batch file
convert.bat
```

### Option 3: Web Server (Local Demo)
Start a local web server:
```bash
python -m http.server 8080
```
Then open: http://localhost:8080/converter.html

## 📁 File Structure

```
yt_mp3_converter/
├── converter.html           # Main HTML interface (open this in browser)
├── convert.bat              # Windows batch launcher
├── GUIDE.md                # This file
├── README.md               # Repository info
├── requirements.txt        # Dependencies list
└── scripts/
    ├── simple_gui.py       🎨 GUI version with file picker
    ├── cli.py              💻 Command-line version
    └── advanced_pro.py     🔥 Advanced features (playlist/channel support)
```

## 🎯 Features

- ✅ Convert YouTube videos to MP3
- ✅ Multiple audio quality options (128kbps - 320kbps)
- ✅ Easy GUI interface with file browser
- ✅ Works with playlists and channels
- ✅ Custom output directory selection

## 🔧 Troubleshooting

**Error: FFmpeg not found**
- Download and install from https://ffmpeg.org/download.html
- Add ffmpeg.exe to your system PATH

**Error: yt-dlp not installed**
```bash
pip install yt-dlp
```

**Conversion fails silently**
- Check internet connection
- Verify the YouTube URL is valid
- Some videos may be restricted or age-gated

## 📝 Supported URLs

- Standard video: `https://www.youtube.com/watch?v=VIDEO_ID`
- Short URL: `https://youtu.be/VIDEO_ID`
- Playlists: `https://www.youtube.com/playlist?list=PL...`
- Channels: `https://www.youtube.com/channel/UC...`

Enjoy your converted MP3s! 🎵