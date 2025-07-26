---
layout: default
title: "Lorenzo's Remixes 2 song"
date: 2024-12-25
author: Tom Ray
description: "A guide to adding beautiful HTML5 music players to your Jekyll blog posts"
featured_home_order: 3
---

# How to Use the Music Player in Your Posts

One of the best features of this blog is the ability to embed beautiful, custom music players directly into your posts. Here's how to use it!

## Basic Usage

To add a music player to any post, simply use the include tag like this:


{% include music-player.html 
  title="Your Song Title" 
  artist="Artist Name" 
  file="/assets/audio/01 Lorenzo's Music - Friction world.mp3" %}


## With Album Cover

You can also include an album cover image:


{% include music-player.html 
  title="Your Song Title" 
  artist="Artist Name" 
  file="/assets/audio/01 Lorenzo's Music - Friction world.mp3"
  cover="/assets/images/00 - Cover.jpg" %}


## Example Player

Here's a demo of the music player in action:

{% include music-player.html 
  title="Demo Track" 
  artist="Tom Ray" 
  file="/assets/audio/01 Lorenzo's Music - Friction world.mp3"
  cover="/assets/images/demo-cover.jpg" %}

## Features

The music player includes:

- **Play/Pause Controls**: Simple and intuitive
- **Progress Bar**: Visual progress with seek functionality
- **Time Display**: Current time and total duration
- **Volume Control**: Adjustable volume with mute option
- **Responsive Design**: Works great on all devices
- **Beautiful Styling**: Light, modern design that fits your blog

## File Organization

For best organization, I recommend this structure:

```
assets/
├── audio/
│   ├── song1.mp3
│   ├── song2.mp3
│   └── ...
└── images/
    ├── cover1.jpg
    ├── cover2.jpg
    └── ...
```

## Tips for Best Results

1. **Audio Format**: Use MP3 format for best compatibility
2. **File Size**: Keep files under 10MB for faster loading
3. **Cover Images**: Use square images (120x120px minimum)
4. **File Names**: Use descriptive, lowercase names with hyphens

## Customization

The player is fully customizable through CSS. You can modify colors, sizes, and animations by editing the `_sass/_music-player.scss` file.

That's it! Now you can easily share your music with your readers in a beautiful, professional way. 
