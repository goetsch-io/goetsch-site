#!/bin/bash
set -e

# Install dependencies
echo "Installing dependencies..."
npm ci

# Build Tailwind CSS
echo "Building Tailwind CSS..."
npx tailwindcss -i ./assets/css/main.css -o ./themes/custom/static/css/tailwind.css

# Build Hugo site
echo "Building Hugo site..."
hugo --minify

echo "Build completed successfully!"
