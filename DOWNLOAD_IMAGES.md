# Downloading Images from Google Photos

Two helper scripts are available to download images from Google Photos shared links and add them to your Jekyll site.

## Quick Start

### Python Script (Recommended)

```bash
python3 download_google_photo.py "https://photos.app.goo.gl/au6Ev3smYCCgmUXo6" my-image.jpg
```

### Bash Script (Alternative)

```bash
./download_google_photo.sh "https://photos.app.goo.gl/au6Ev3smYCCgmUXo6" my-image.jpg
```

## Requirements

### For Python Script
- Python 3.6 or higher
- `requests` library (install with: `pip install requests`)

### For Bash Script
- `curl` and `wget` (usually pre-installed on Linux)

## Usage

### Basic Usage

Download with automatic filename:
```bash
python3 download_google_photo.py "https://photos.app.goo.gl/YOUR-LINK"
```

Download with custom filename:
```bash
python3 download_google_photo.py "https://photos.app.goo.gl/YOUR-LINK" concert-photo.jpg
```

### What It Does

1. Extracts the actual image URL from the Google Photos shared link
2. Downloads the full-resolution image
3. Saves it to `assets/images/`
4. Provides the Jekyll code snippet to use in your posts

### Output Example

After successful download, you'll get:

```
✓ Success! Image downloaded to: ./assets/images/my-image.jpg

Add this to your Jekyll post:

{% include vhs-image.html
   src="/assets/images/my-image.jpg"
   alt="Description of image"
   caption="Your caption here"
   size="full"
%}
```

## Using in Your Posts

Copy the generated code into your post markdown file:

```markdown
---
layout: post
title: "My New Post"
---

Here's my photo from Google Photos:

{% include vhs-image.html
   src="/assets/images/my-image.jpg"
   alt="Concert photo"
   caption="Amazing show last night!"
   size="full"
%}
```

## Troubleshooting

### If the script fails:

1. **Open the Google Photos link in your browser**
2. **Right-click on the image** and select "Open image in new tab"
3. **Copy the direct URL** (starts with `https://lh3.googleusercontent.com/`)
4. **Download manually with wget:**
   ```bash
   wget -O "assets/images/my-image.jpg" "https://lh3.googleusercontent.com/YOUR-URL"
   ```

### Common Issues

- **"Could not extract image URL"**: Google Photos sometimes changes their HTML structure. Try the manual method above.
- **"Permission denied"**: Make sure the bash script is executable: `chmod +x download_google_photo.sh`
- **Python import error**: Install requests: `pip install requests`

## Tips

- Always use descriptive filenames: `concert-2024-11-14.jpg` instead of generic names
- The script automatically gets the full-resolution version
- Images are saved to `assets/images/` which is already tracked by Jekyll
- The VHS-themed image include will automatically style your images

## Image Size Options

- `size="full"` - Full width, edge-to-edge
- `size="normal"` - Centered, responsive width

Adjust the size parameter in the generated code snippet as needed!
