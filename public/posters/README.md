# Show Posters

Place your show poster images in this directory.

## Recommended Image Specifications

- **Aspect Ratio**: 3:4 (portrait orientation, e.g., 600x800px, 900x1200px)
- **Format**: JPG or PNG
- **File Size**: Optimize for web (typically under 500KB)
- **Resolution**: At least 600px wide for good display quality

## Naming Convention

Use lowercase with hyphens, matching your show titles:
- `midsummer-nights-dream.jpg`
- `importance-of-being-earnest.jpg`
- `our-town.jpg`
- `steel-magnolias.jpg`
- `christmas-carol.jpg`

## How to Use

After adding a poster image, update `data/shows.yaml`:

```yaml
- title: "A Midsummer Night's Dream"
  poster: "/posters/midsummer-nights-dream.jpg"
  poster_placeholder: false
  # ... rest of show data
```

The poster will automatically appear on both the home page and shows page.
