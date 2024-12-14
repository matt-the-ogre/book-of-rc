#!/bin/bash

# Input logo file
input_file="../docs/images/logo.webp"

# Output directory for favicons
output_dir="../docs/images/favicons"
mkdir -p $output_dir

# Generate favicon sizes and formats
magick $input_file -resize 16x16 $output_dir/favicon-16x16.png
magick $input_file -resize 32x32 $output_dir/favicon-32x32.png
magick $input_file -resize 48x48 $output_dir/favicon-48x48.png
magick $input_file -resize 64x64 $output_dir/favicon-64x64.png
magick $input_file -resize 180x180 $output_dir/favicon-180x180.png
magick $input_file -resize 512x512 $output_dir/favicon-512x512.png

# Create ICO file with multiple sizes
magick convert $output_dir/favicon-16x16.png \
               $output_dir/favicon-32x32.png \
               $output_dir/favicon-48x48.png \
               $output_dir/favicon-64x64.png \
               $output_dir/favicon-180x180.png \
               $output_dir/favicon-512x512.png \
               $output_dir/favicon.ico

# Print completion message
echo "Favicons generated and stored in $output_dir:"
ls $output_dir
