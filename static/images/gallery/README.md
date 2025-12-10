# Venue Gallery Images

Place your NOVA Center venue photos in this directory to replace the carousel placeholders.

## Recommended Image Specifications

- **Aspect Ratio**: 16:9 (landscape orientation, e.g., 1920x1080px, 1280x720px)
- **Format**: JPG or PNG
- **File Size**: Optimize for web (typically under 300KB)
- **Resolution**: At least 1280px wide for good display quality

## Suggested Photos

1. **Main Stage** - Empty stage with lighting
2. **Backstage Area** - Production facilities, dressing rooms
3. **Rehearsal Spaces** - Workshop or practice rooms
4. **Building Exterior** - Historic building facade
5. **Audience View** - From the seats looking at stage
6. **Lobby/Entrance** - Welcoming public spaces

## How to Add Your Photos

1. Add your images to this directory (e.g., `main-stage.jpg`, `backstage.jpg`, etc.)

2. Update the carousel in `layouts/about/list.html`:

Replace the placeholder slides with your images:

```html
<!-- Slide 1 -->
<div class="carousel-slide min-w-full h-full flex-shrink-0">
  <img src="/images/gallery/main-stage.jpg" alt="NOVA Main Stage" class="w-full h-full object-cover">
</div>
```

## Current Placeholders

The carousel currently shows colorful placeholder slides with emoji icons. These are designed to be easily replaced with actual photographs of your venue.
