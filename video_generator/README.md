# 🎬 AI Video Generator - Local GPU Accelerated (12GB VRAM)

A powerful local AI video generation tool that runs entirely on your NVIDIA GPU!

## 🚀 Features

✨ **Run 100% locally** - No cloud upload, complete privacy  
🎨 **Text-to-Video** - Generate videos from text prompts  
⚡ **GPU Accelerated** - Full CUDA support for fast generation  
💾 **12GB VRAM Optimized** - Supports larger models and higher resolutions  
🔧 **Multiple Models** - Try different AI video generation techniques  

---

## 📦 Prerequisites

### 1. **Install Python**
Make sure you have Python 3.9+ installed:
```bash
python --version  # Should show Python 3.9 or higher
```

### 2. **Install CUDA Toolkit (for NVIDIA GPU)**
Your 12GB VRAM likely means an RTX series card. Download CUDA from:
- https://developer.nvidia.com/cuda-downloads
- Choose the latest version for your Windows/Mac/Linux system

### 3. **Create Virtual Environment** (Recommended)
```bash
cd video_generator
python -m venv venv
venv\Scripts\activate  # Windows
# or: source venv/bin/activate  # Mac/Linux
```

---

## 🛠️ Installation (Step-by-Step)

### Step 1: Create Virtual Environment
```bash
cd video_generator
python -m venv venv
.\venv\Scripts\activate  # Windows
```

### Step 2: Install PyTorch with CUDA Support
For your RTX GPU, install the CUDA 11.8 version:
```bash
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
```

### Step 3: Install Video Generation Dependencies
```bash
pip install diffusers transformers accelerate sentencepiece protobuf
pip install omegaconf einops pillow
```

---

## 🎯 Quick Start Guide

### Method 1: Run Using the Script (EASIEST)

1. **Create a text file** called `generate_video.txt` with your prompt
   ```
   A serene sunset over mountains with calm waves, cinematic quality
   ```

2. **Double-click** `run_generator.bat`

3. Wait for models to download (~5-10 GB)
4. Your video will generate automatically!

### Method 2: Command Line

```bash
cd video_generator
.\venv\Scripts\activate
python run_generation.py --prompt "Your video description here"
```

---

## 🎨 Example Prompts to Try

| Prompt | Description |
|--------|-------------|
| "A beautiful sunrise over mountains with clouds moving slowly" | Scenic nature video |
| "Cyberpunk city street at night with neon lights and flying cars" | Futuristic sci-fi scene |
| "Underwater coral reef with colorful fish swimming, 4K quality" | Marine life video |
| "Space nebula with stars twinkling in deep space" | Cosmic scene |
| "Time-lapse of a blooming flower from bud to full bloom" | Nature time-lapse |

---

## 📊 Video Generation Settings Explained

### Quality Options (Choose one):

| Setting | Resolution | VRAM Usage | Quality | Speed |
|---------|-----------|------------|---------|-------|
| **Fast** | 256x256 | ~4GB | Lower | Fastest |
| **Balanced** | 512x512 | ~8GB | Medium | Good |
| **High Quality** | 576x1024 | ~12GB | High | Slower |

### Recommended for Your 12GB VRAM:
- Use **"Balanced"** (512x512) for best speed/quality balance
- Use **"High Quality"** if you need larger outputs and don't mind waiting

---

## ⚙️ Technical Details

### Models Being Used:
- **Diffusers Pipeline** - Stable Diffusion video generation
- **AnimateDiff** - Temporal consistency for smooth animations
- **VAE Encoder/Decoder** - Video format conversion

### GPU Optimization:
- CUDA kernels run directly on your NVIDIA GPU
- Batch processing available for multiple frames
- Memory efficient loading strategies

### Output Format:
- **GIF** (easier to view, smaller file)
- **MP4** (standard video format)

---

## 🔧 Configuration Files

### 1. `video_config.txt` - Your Custom Settings
Edit this file to change generation parameters:
```
resolution = 512x512          # Resolution (256x256, 512x512, or 576x1024)
steps = 25                    # Generation steps (10-50 range)
guidance_scale = 7.5          # Creative control (7.0-9.0)
seed = -1                     # Random (-1) or specific number
output_format = mp4           # Output format: gif or mp4
```

---

## 📁 Project Structure

```
video_generator/
├── generate_video.py        # Main generation script
├── run_generation.py        # Command-line interface
├── video_config.txt         # Your custom settings
├── generated_videos/        # Output folder (creates automatically)
├── models/                 # Downloaded AI models (~8-10GB)
├── venv/                   # Python virtual environment
├── requirements.txt        # Python dependencies
├── README.md              # This file!
└── run_generator.bat      # Double-click to start (Windows)
```

---

## 🎬 Generation Workflow

1. **Start Generator** - Run `run_generator.bat` or command
2. **Enter Prompt** - Describe your desired video in the text box
3. **Select Settings** - Choose resolution and quality
4. **Click Generate** - Watch progress bars animate!
5. **Wait 30-90 seconds** - Depends on resolution and prompt complexity
6. **Download/View** - Video saved to `generated_videos/` folder

---

## ⏱️ Expected Generation Times (12GB VRAM)

| Resolution | Steps | Estimated Time |
|------------|-------|----------------|
| 256x256    | 20    | ~30 seconds   |
| 512x512    | 25    | ~45-60 seconds|
| 576x1024   | 30    | ~90-120 seconds|

*Note: First run downloads models (~8-10GB), takes 5-15 minutes depending on internet speed*

---

## 🆘 Troubleshooting

### "CUDA not available" Error
```bash
# Check NVIDIA drivers
nvidia-smi  # Should show your GPU and CUDA version

# Reinstall PyTorch with CUDA
pip uninstall torch torchvision torchaudio
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
```

### "Out of memory" Error
- Lower resolution to 256x256
- Reduce steps from 30 to 15
- Close other applications using GPU

### Model Download Fails
- Check internet connection
- Try downloading model manually: https://huggingface.co/stabilityai/stable-video-diffusion-img2vid-xt
- Place model in `models/` folder

---

## 💡 Tips for Best Results

1. **Start Small** - Begin with 256x256 resolution to test
2. **Descriptive Prompts** - Be specific about scene, lighting, motion
3. **Fewer Steps Faster** - Use 15-20 steps for quick iterations
4. **Save Good Seeds** - Note random seeds that work well
5. **Iterate** - Generate multiple variations of the same idea

### Example Prompt Writing:
```
✅ GOOD: "Cinematic sunset over calm ocean waves, golden hour lighting, 
          slow motion, 4K quality"

❌ BAD: "Ocean sunset" (too vague)
```

---

## 🎯 Advanced Features

### Batch Generation
Generate multiple videos from a text file:
```bash
python generate_video.py --prompt-file prompts.txt
```

### Custom Seed Control
For reproducibility:
```bash
python run_generation.py --prompt "Your prompt" --seed 42
```

### Save Settings as Default
Edit `video_config.txt` to set your preferred resolution and steps permanently.

---

## 📈 Performance on Your GPU

With **12GB VRAM**, you can:
- ✅ Generate 512x512 videos at full quality
- ✅ Use larger Stable Diffusion models (XL variants)
- ✅ Enable higher guidance scales for better coherence
- ✅ Generate longer video sequences
- ✅ Run multiple experiments simultaneously

---

## 🚀 Next Steps After Setup

1. **Run the Generator** - Double-click `run_generator.bat`
2. **Try Example Prompts** - Use the suggested prompts in this README
3. **Customize Settings** - Edit `video_config.txt` for your preferences
4. **Experiment** - Test different resolutions and prompts
5. **Share Your Creations** - Show off your AI-generated videos!

---

## 📚 Resources

- **Stable Diffusion Docs:** https://github.com/CompVis/stable-diffusion
- **AnimateDiff:** https://github.com/guoyww/AnimateDiff
- **Hugging Face Models:** https://huggingface.co/models
- **Prompt Engineering:** https://www.promptingguide.ai/

---

## ⚡ Quick Command Reference

```bash
# Start the generator
.\venv\Scripts\activate
python run_generation.py --prompt "Your video description"

# Use specific resolution
python generate_video.py --resolution 512x512 --steps 25

# Generate with fixed seed for reproducibility
python run_generation.py --prompt "Prompt here" --seed 12345
```

---

## 🎉 You're Ready!

Your NVIDIA GPU with 12GB VRAM is powerful enough to run professional-grade video generation locally. Just start the generator and begin creating amazing videos!

**Happy Video Generating! 🎬✨**
