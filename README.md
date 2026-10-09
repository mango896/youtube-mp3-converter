# YouTube to MP3 Converter 🎵

A simple, easy-to-use tool for converting YouTube videos to MP3 audio format.

![YouTube Logo](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube)
![License](https://img.shields.io/badge/license-MIT-blue)
![Python](https://img.shields.io/badge/python-3.6+-blue)

## ✨ Features

- 🎧 **Multiple Quality Options** - Choose from 128k to best quality
- 🖥️ **Easy GUI Interface** - No coding required
- 💻 **Cross-Platform** - Works on Windows, Mac, and Linux
- 📝 **Command-Line Support** - For advanced users
- 📺 **Playlist & Channel Support** - Download entire collections
- ⚡ **Fast Processing** - Optimized for speed

## 📦 Installation

### Prerequisites

1. **Python 3.6+** ([Download](https://www.python.org/downloads/))
2. **yt-dlp** ([Latest version](https://github.com/yt-dlp/yt-dlp))
3. **FFmpeg** (for audio extraction) - [Download](https://www.gyan.dev/ffmpeg/builds/)

### Quick Start

```bash
# Clone the repository
git clone https://github.com/mango896/youtube-mp3-converter.git
cd youtube-mp3-converter

# Install dependencies
pip install -r requirements.txt

# Run the converter
python launcher.py
```

### One-Click Installation (Windows)

Simply double-click `START_HERE.bat` and follow the prompts!

## 🚀 Usage

### Method 1: GUI Interface (Recommended)

```bash
python scripts/simple_gui.py
```

This will open a graphical interface where you can:
- Paste YouTube URLs
- Select audio quality
- Choose output folder
- Convert videos to MP3

### Method 2: Command Line

```bash
python scripts/cli.py
```

Follow the prompts in your terminal.

### Method 3: HTML Interface (Demo)

Simply open `converter.html` in your browser for a demo interface!

## 📝 Example Commands

Convert a single video:
```bash
python scripts/cli.py
# Enter URL and quality when prompted
```

Convert a playlist:
```bash
python scripts/advanced_pro.py
# Select option 2 for playlist conversion
```

## ⚙️ Configuration

Audio quality options:
- `bestaudio/best` - Highest available quality (recommended)
- `320k` - High quality (320 kbps)
- `256k` - Good quality (256 kbps)
- `192k` - Standard quality (192 kbps)
- `128k` - Low quality, fastest download (128 kbps)

## 🔧 Advanced Features

### Download from Playlist
```bash
echo "https://www.youtube.com/playlist?list=PL..." > playlist.txt
python scripts/cli.py < playlist.txt
```

### Batch Convert Multiple Videos
```bash
cat urls.txt | while read url; do 
    python scripts/cli.py <<< "$url"
done
```

## 📖 Documentation

- [Complete Guide](GUIDE.md) - Detailed usage instructions
- [README](README.md) - Project information

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**mango896**

- GitHub: [@mango896](https://github.com/mango896)

## 🙏 Acknowledgments

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - YouTube downloading library
- [FFmpeg](https://ffmpeg.org/) - Multimedia framework

## 📞 Support

If you encounter any issues, please open an issue on the GitHub repository.

---

Made with ❤️ using yt-dlp and FFmpeg