---
layout: post
title: "Demo: Responsive VHS-Themed Images in Posts"
date: 2024-12-28
author: Tom Ray
description: "A demonstration of the responsive, VHS-styled image include with full-width and normal options, plus captions."
category: "Tutorials"
tags: ["images", "vhs-style", "responsive", "demo"]
---
# Demo: Responsive VHS-Themed Images in Posts

You can now add images to your posts that are:
- Fully responsive for mobile and desktop
- Themed with the VHS/CRT look (scan lines, grain, green border, glow)
- Optionally full-width or normal size
- With or without captions

## Example 1: Full Width Image with Caption

{% include vhs-image.html src="/assets/images/tom-ray-show-bandcamp-faircamp-250724.jpg" alt="A full width VHS themed image" caption="This is a full width image with a VHS/CRT effect." size="full" %}

## Example 2: Normal Size Image with Caption

{% include vhs-image.html src="/assets/images/00 - Cover.jpg" alt="A normal size VHS themed image" caption="This is a normal size image, centered and responsive." size="normal" %}

Once more

{% include vhs-image.html
   src="/assets/images/tom-ray-show-bandcamp-faircamp-250724.jpg"
   alt="Description of image"
   caption="This is a caption."
   size="normal"
%}


## How to Use

```liquid
{% include vhs-image.html src="/assets/images/your-image.jpg" alt="Description of image" caption="This is a caption." size="full" %}
```

- Use `size="full"` for edge-to-edge, or omit/set to `normal` for a smaller, centered image.
- The caption is optional.
- The image is always responsive and themed.

---

Try it out in your next post for beautiful, retro-styled images! 
