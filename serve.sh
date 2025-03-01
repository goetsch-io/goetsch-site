#!/bin/bash
set -e

# Build the site first
echo "Building site..."
npm run build

# Use Python's simple HTTP server to serve the static files
echo "Starting server on http://localhost:8000"
echo "Press Ctrl+C to stop"
cd public && python3 -m http.server