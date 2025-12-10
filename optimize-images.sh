#!/bin/bash
# Image optimization script for NOVA website

echo "Optimizing posters..."
cd static/posters
for img in *.jpg *.png *.jpeg; do
  if [ -f "$img" ]; then
    # Convert to WebP if not already
    if [ ! -f "${img%.*}.webp" ]; then
      cwebp -q 85 "$img" -o "${img%.*}.webp"
      echo "  Converted $img to WebP"
    fi

    # Optimize original
    mogrify -resize 800x -quality 85 -strip "$img"
    echo "  Optimized $img"
  fi
done

echo ""
echo "Optimizing headshots..."
cd ../headshots
for img in *.jpg *.png *.jpeg; do
  if [ -f "$img" ]; then
    # Convert to WebP if not already
    if [ ! -f "${img%.*}.webp" ]; then
      cwebp -q 85 "$img" -o "${img%.*}.webp"
      echo "  Converted $img to WebP"
    fi

    # Resize and optimize original
    mogrify -resize 400x400^ -gravity center -extent 400x400 -quality 85 -strip "$img"
    echo "  Optimized $img"
  fi
done

echo ""
echo "Optimizing gallery images..."
cd ../images/gallery
for img in *.jpg *.png *.jpeg; do
  if [ -f "$img" ]; then
    # Convert to WebP if not already
    if [ ! -f "${img%.*}.webp" ]; then
      cwebp -q 85 "$img" -o "${img%.*}.webp"
      echo "  Converted $img to WebP"
    fi

    # Resize and optimize original (larger size for gallery display)
    mogrify -resize 1200x -quality 85 -strip "$img"
    echo "  Optimized $img"
  fi
done

echo ""
echo "Optimization complete!"
echo "Remember to update YAML and HTML files to use .webp extensions for better performance."
