---
title: "How to Use the CRT-Style Hero Section on Your Jekyll Homepage"
date: 2025-11-16
categories: tutorials
layout: post
hero_image: /assets/images/hero-tv.jpg
hero_alt: "Old CRT TV with static"
---

Want to give your homepage a bold, retro look? The new CRT-style hero section lets you set a custom background image with scanlines and a VHS gradient overlay—perfect for musicians, creators, and anyone who loves vintage tech vibes.

## What Is the Hero Section?

The hero section is the large banner at the top of your homepage. With the latest update, you can:
- Set a unique background image
- Add alt text for accessibility
- Enjoy layered CRT/TV effects (scanlines, glow, gradient)
- Keep your title and subtitle readable above the image

## How to Enable It

1. **Add these variables to your page front matter (usually `index.html`):**

   ```yaml
   ---
   layout: default
   title: Home
   hero_image: /assets/images/your-hero-image.jpg
   hero_alt: "A description of the hero image for accessibility"
   ---
   ```

2. **Result:**
   - Your image appears as the hero background, with CRT scanlines and a VHS-style gradient overlay.
   - The page title and subtitle (if present) are layered above for maximum impact and readability.

## Customization Tips

- **Overlay & Scanlines:**
  - Edit `_sass/_vhs-theme.scss` to adjust overlay opacity, scanline intensity, or add more effects.
- **No Image?**
  - If you don’t set `hero_image`, the hero section will show only the gradient and scanlines.
- **Accessibility:**
  - Always set `hero_alt` for screen readers and better SEO.

## Example

```liquid
---
layout: default
title: Home
hero_image: /assets/images/hero-tv.jpg
hero_alt: "Old CRT TV with static"
---
```

## Why Use a CRT-Style Hero?

- Stand out with a unique, nostalgic look
- Instantly set the mood for your site
- Keep your content readable and accessible

---

Have questions or want to see more features like this? Let me know in the comments or reach out directly!