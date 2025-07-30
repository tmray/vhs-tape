# Dynamic Category System

This Jekyll site now uses a dynamic category system that automatically generates category pages based on the categories used in your posts.

## How It Works

1. **Automatic Generation**: When you add a `category` to any post's front matter, a category page is automatically generated
2. **Dynamic URLs**: Category pages are created at `/category/category-name/`
3. **No Manual Maintenance**: You don't need to manually create or delete category pages

## Adding Categories to Posts

Simply add a `category` field to your post's front matter:

```yaml
---
layout: post
title: "My New Post"
date: 2024-12-30
category: "Music"
tags: ["new-release", "synth"]
---
```

## Available Categories

Based on your current posts, these categories are available:
- **General**: Default category for general posts
- **Music**: Posts about music, tracks, albums
- **Tutorials**: How-to guides and technical posts
- **Vlogs**: Video content and behind-the-scenes
- **Technology**: Tech-related posts

## Adding New Categories

To add a new category:
1. Simply use it in a post's front matter
2. The category page will be automatically generated
3. The category will appear in the categories listing page

## Removing Categories

To remove a category:
1. Remove or change the category from all posts that use it
2. The category page will no longer be generated
3. The category will disappear from the categories listing

## Category Page Features

Each category page includes:
- Category title and description
- List of all posts in that category
- Post count
- Navigation back to all categories
- VHS-themed styling consistent with the site

## File Structure

- `_plugins/category_generator.rb`: Jekyll plugin that generates category pages
- `_categories/_posts.html`: Template for individual category pages
- `categories.html`: Main categories listing page
- `_layouts/post.html`: Post layout that links to category pages

## Technical Details

The system uses:
- Jekyll plugins to automatically generate pages
- Liquid templating for dynamic content
- URL-friendly category names (spaces become hyphens, lowercase)
- Consistent styling with the VHS theme

## Benefits

- **Low Maintenance**: No manual page creation needed
- **Scalable**: Works with any number of categories
- **Consistent**: All category pages use the same template
- **SEO Friendly**: Clean URLs and proper structure
- **User Friendly**: Easy navigation and discovery 