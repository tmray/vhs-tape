# Home Page Hero Section Usage

The homepage features a customizable hero section with a retro CRT/TV effect, layered scanlines, and a gradient overlay. You can set a unique background image and alt text for the hero area using front matter variables in your `index.html` or any page using the hero-section block.

## How to Use

1. **Add front matter to your page (e.g., `index.html`):**

   ```yaml
   ---
   layout: default
   title: Home
   hero_image: /assets/images/your-hero-image.jpg  # Path to your hero background image
   hero_alt: "A description of the hero image for accessibility"
   ---
   ```

2. **Result:**
   - The hero section will display your image as a background, with CRT scanlines and a VHS-style gradient overlay.
   - The page title and subtitle (if present) will appear above the image, maintaining readability.

3. **Styling:**
   - The hero background is set via a CSS variable (`--hero-bg`) and layered with overlays for the retro effect.
   - If no `hero_image` is set, the hero section will show only the gradient and scanlines.

## Example

```liquid
---
layout: default
title: Home
hero_image: /assets/images/hero-tv.jpg
hero_alt: "Old CRT TV with static"
---
```

## Customization
- Adjust overlay opacity, scanline intensity, or add a caption by editing `_sass/_vhs-theme.scss`.
- For advanced effects, you can further layer gradients or add animated noise.

---

*Feel free to ask if you'd like a dedicated blog post or documentation page explaining this or any other new feature!*