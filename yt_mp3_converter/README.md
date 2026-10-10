# YouTube to MP3 Web Converter 🎵

A simple web-based tool to convert YouTube videos to MP3 format directly from your browser!

## Features ✨

- ✅ Convert YouTube videos to MP3
- ✅ Choose audio quality (Best/High/Standard/Low)
- ✅ Real-time conversion progress
- ✅ Direct download of converted files
- ✅ No software installation required - just run the server!

## How It Works 🔧

1. **Frontend**: HTML/CSS/JS web interface
2. **Backend**: Python Flask server with yt-dlp
3. **Conversion**: FFmpeg extracts audio from downloaded video

## Quick Start 🚀

### Method 1: Double-click (Easiest)

1. Navigate to the `yt_mp3_converter` folder
2. Double-click `START_WEB_SERVER.bat`
3. Open http://localhost:5000 in your browser

### Method 2: Command Line

```bash
cd yt_mp3_converter
python server.py
# Then open http://localhost:5000
```

## How to Use 📝

1. Open http://localhost:5000 in your browser
2. Paste a YouTube video URL
3. Select your preferred audio quality
4. Click "Convert to MP3"
5. Wait for conversion to complete (progress bar shows status)
6. Click "Download MP3" when ready

## Supported Video Formats 📹

- YouTube videos (all formats)
- Shorts, regular videos, and playlists
- Various video qualities automatically selected

## Audio Quality Options 🎚️

| Quality | Bitrate | Best For |
|---------|---------|----------|
| Best    | ~128-320 kbps | Audiophiles, lossless quality |
| High    | 256 kbps   | Most users, great quality |
| Standard | 192 kbps   | Balanced quality & size |
| Low     | 128 kbps   | Small file sizes |

## Files Explained 📂

```
yt_mp3_converter/
├── server.py              # Flask backend with conversion logic
├── web_version/           # Web interface files
│   └── index.html        # Main HTML page you see in browser
├── downloads/             # Where converted MP3s are saved
├── START_WEB_SERVER.bat  # Double-click to start server (Windows)
├── install_ffmpeg.bat     # Automatic FFmpeg installer (if needed)
└── README.md             # This file!
```

## Troubleshooting 🔍

### "FFmpeg is required" Error
- Run `install_ffmpeg.bat` to automatically install FFmpeg
- Or double-click `START_WEB_SERVER.bat` which includes FFmpeg setup

### Server won't start
- Make sure Python 3.x is installed
- Try: `python --version`
- If errors occur, check that you have write permissions

### Conversion fails
- Check YouTube URL is valid and accessible
- Some videos may be unavailable for download due to YouTube restrictions
- Try a different video or quality setting

## Privacy & Security 🔒

- ⚠️ Videos are downloaded through yt-dlp (requires internet)
- 📁 MP3s are saved locally on your device
- 🔐 No data is sent to external servers - all processing happens locally

## Requirements 💻

- Windows/Mac/Linux
- Python 3.7+
- Modern web browser
- Internet connection for downloading videos

## License 📄

MIT License - Feel free to use and modify!

## Support 💬

Found a bug or have questions? Create an issue on GitHub!

---

**Made with ❤️ using Flask, yt-dlp, and FFmpeg**
