---
layout: post
title: "Vlog Demo: Embedding a YouTube Video in VHS Style"
date: 2024-12-26
author: Tom Ray
description: "A demonstration of how to embed a YouTube video in a VHS/CRT-styled player on this blog."
category: "Vlogs"
tags: ["youtube", "vhs-style", "video", "demo"]
featured_home_order: 2
---

# Vlog Demo: Embedding a YouTube Video in VHS Style

One of the coolest features of this site is the ability to embed YouTube videos in a way that matches the analog, VHS-inspired design. Here’s a demonstration using a real YouTube video:

{% include youtube.html id="2fr0d6N8RvY" title="Demo: YouTube VHS Embed" %}

## How It Works

- The video is displayed inside a CRT-style frame with scan lines and grain overlays.
- The border glows with that classic VHS green.
- The title below the video uses a retro font and color.
- The embed is fully responsive and looks great on all devices.

## How to Use This in Your Own Posts

Just add this line to any post or page:

```liquid
{% include youtube.html id="YOUR_VIDEO_ID" title="Optional Title" %}
```

Replace `YOUR_VIDEO_ID` with the part after `v=` in the YouTube URL. For example, for [this video](https://www.youtube.com/watch?v=2fr0d6N8RvY), the ID is `2fr0d6N8RvY`.

---

Enjoy sharing your vlogs and music videos with a true retro vibe! 
