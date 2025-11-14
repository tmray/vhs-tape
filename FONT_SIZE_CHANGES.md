# Font Size Improvements for Better Readability

The text sizes across the website have been increased for better readability.

## Changes Made

### Base Typography (affects all pages)

1. **Body Text** (`_sass/_vhs-theme.scss`)
   - Base font size: **18px** (added)
   - Paragraph font size: **1.1rem** (increased)
   - Line height: **1.8** (increased from default)
   - Paragraph spacing: **1.2rem** bottom margin

2. **Links**
   - Font size: **1.05rem** (added)
   - Easier to click and read

3. **Headings** (general)
   - H1: **2rem**
   - H2: **1.6rem**
   - H3: **1.3rem**
   - H4: **1.1rem**
   - H5: **1rem**
   - H6: **0.9rem**
   - Line height: **1.6** (increased from 1.4)
   - Added bottom margin: **1rem**

### Post Content (individual blog posts)

4. **Post Body Text**
   - Font size: **1.15rem** (increased from 1rem)
   - Line height: **1.9** (increased from 1.7)
   - Paragraph spacing: **1.4rem** (increased from 1.2rem)

5. **Post Headings**
   - H1: **2rem** (increased from 1.8rem)
   - H2: **1.65rem** (increased from 1.5rem)
   - H3: **1.4rem** (increased from 1.3rem)
   - H4: **1.2rem** (increased from 1.1rem)

6. **Post Links**
   - Font size: **1.1rem** (added)

7. **Post Excerpts** (on listing pages)
   - Font size: **1.05rem** (increased from 0.95rem)
   - Line height: **1.7** (increased from 1.6)

8. **Read More Buttons**
   - Font size: **1rem** (increased from 0.9rem)

### Main CSS (`assets/css/main.scss`)

9. **Global Body**
   - Base font size: **18px** (added)
   - Line height: **1.8** (increased from 1.6)

## Viewing Changes

To see the changes:

1. Build your Jekyll site:
   ```bash
   bundle exec jekyll build
   ```

2. Serve locally to preview:
   ```bash
   bundle exec jekyll serve
   ```

3. Open your browser to `http://localhost:4000`

## Reverting Changes

If you want to revert these changes:

```bash
git checkout _sass/_vhs-theme.scss assets/css/main.scss
```

## Notes

- All changes maintain the VHS/retro aesthetic
- Line heights are increased for better reading comfort
- Spacing between elements is improved
- Text remains responsive on mobile devices
- The changes are consistent across the entire site
