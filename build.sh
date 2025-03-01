#!/bin/bash
set -e

# Install dependencies
echo "Installing dependencies..."
npm ci

# Build Tailwind CSS
echo "Building Tailwind CSS..."
NODE_ENV=production npm run build:css

# Build Hugo site
echo "Building Hugo site..."
hugo --minify

echo "Build completed successfully!"
