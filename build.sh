#!/bin/bash
set -e

# Install dependencies
echo "Installing dependencies..."
npm ci

# Build Tailwind CSS
echo "Building Tailwind CSS..."
NODE_ENV=production npx tailwindcss-cli build -i ./assets/css/main.css -o ./themes/custom/static/css/tailwind.css

# Build Hugo site
echo "Building Hugo site..."
HUGO_ENV=production hugo --minify

echo "Build completed successfully!"
