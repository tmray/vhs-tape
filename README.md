# Tom Ray's Musician Blog

A beautiful, light-themed Jekyll blog designed for musicians and creators to share their work and creative process.

## Features

- **Custom HTML5 Music Player**: Beautiful, responsive music player for embedding audio in posts
- **Light, Modern Design**: Clean, professional design with smooth animations
- **Responsive Layout**: Works perfectly on desktop, tablet, and mobile
- **Easy to Use**: Simple Jekyll setup with clear documentation

## Music Player Usage

### Basic Usage

Add a music player to any post or page using the include tag:

```liquid
{% include music-player.html 
  title="Your Song Title" 
  artist="Artist Name" 
  file="/assets/audio/your-song.mp3" %}
```

### With Album Cover

Include an album cover image for a more professional look:

```liquid
{% include music-player.html 
  title="Your Song Title" 
  artist="Artist Name" 
  file="/assets/audio/your-song.mp3" 
  cover="/assets/images/album-cover.jpg" %}
```

### Player Features

- **Play/Pause Controls**: Intuitive play/pause button
- **Progress Bar**: Visual progress with seek functionality
- **Time Display**: Current time and total duration
- **Volume Control**: Adjustable volume with mute option
- **Responsive Design**: Works great on all devices
- **Beautiful Styling**: Light, modern design

## File Structure

```
├── _config.yml              # Jekyll configuration
├── _includes/
│   ├── head.html            # Site head with CSS links
│   └── music-player.html    # Music player component
├── _layouts/
│   └── default.html         # Default page layout
├── _posts/                  # Blog posts
├── _sass/
│   └── _music-player.scss   # Music player styles
├── assets/
│   ├── css/
│   │   └── main.scss        # Main stylesheet
│   ├── audio/               # Audio files
│   └── images/              # Images and covers
└── index.html               # Home page
```

## Setup Instructions

1. **Install Jekyll** (if not already installed):
   ```bash
   gem install jekyll bundler
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Run the development server**:
   ```bash
   bundle exec jekyll serve
   ```

4. **View your site** at `http://localhost:4000`

## Adding Audio Files

1. Place your audio files in the `assets/audio/` directory
2. Use MP3 format for best compatibility
3. Keep file sizes under 10MB for faster loading
4. Use descriptive, lowercase filenames with hyphens

## Adding Cover Images

1. Place cover images in the `assets/images/` directory
2. Use square images (120x120px minimum recommended)
3. Use JPG or PNG format
4. Use descriptive, lowercase filenames with hyphens

## Customization

### Colors

The music player uses a beautiful purple gradient theme. You can customize colors by editing `_sass/_music-player.scss`:

```scss
// Main gradient colors
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);

// Text colors
color: #2c3e50; // Dark text
color: #6c757d; // Light text
```

### Sizing

Adjust player dimensions in the SCSS file:

```scss
.music-player-play {
  width: 60px;  // Play button size
  height: 60px;
}

.music-player-cover img {
  width: 120px;  // Cover image size
  height: 120px;
}
```

## Browser Support

The music player works in all modern browsers:
- Chrome (recommended)
- Firefox
- Safari
- Edge

## License

This project is open source and available under the [MIT License](LICENSE).

## Support

If you have questions or need help customizing the music player, feel free to reach out!

## Home Page Hero Section

The homepage features a customizable hero section with a retro CRT/TV effect, scanlines, and a gradient overlay. You can set a unique background image and alt text for the hero area using front matter variables in your `index.html` or any page using the hero-section block.

### Usage

Add these variables to your page front matter:

```yaml
hero_image: /assets/images/your-hero-image.jpg  # Path to your hero background image
hero_alt: "A description of the hero image for accessibility"
```

The hero section will display your image as a background, with CRT scanlines and a VHS-style gradient overlay. The page title and subtitle (if present) will appear above the image, maintaining readability.

For more details and customization tips, see `HERO_SECTION_USAGE.md`.