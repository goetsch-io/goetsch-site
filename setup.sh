#!/bin/bash
set -e

# 1. Install Hugo (if not already installed)
if ! command -v hugo &> /dev/null; then
    echo "Installing Hugo..."
    brew install hugo
else
    echo "Hugo already installed!"
fi

# 2. Initialize Git (if not already initialized)
if [ ! -d ".git" ]; then
    echo "Initializing Git repository..."
    git init
else
    echo "Git repository already initialized!"
fi

# 3. Install Tailwind CSS and configure it for Hugo
echo "Setting up Tailwind CSS..."
npm init -y
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# 4. Create basic Hugo configuration and structure
echo "Configuring Hugo..."
cat > hugo.toml << EOL
baseURL = "https://goetsch.xyz/"
languageCode = "en-us"
title = "Bradley Goetsch"
theme = "custom"
EOL

# 5. Create custom theme
mkdir -p themes/custom/{layouts/{_default,partials},static/css,assets/css}

# Create Tailwind CSS config
cat > tailwind.config.js << EOL
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**/*.html",
    "./themes/custom/layouts/**/*.html",
    "./content/**/*.{html,md}"
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOL

# Create PostCSS config
cat > postcss.config.js << EOL
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  }
}
EOL

# Create Tailwind input CSS file
mkdir -p assets/css
cat > assets/css/main.css << EOL
@tailwind base;
@tailwind components;
@tailwind utilities;
EOL

# Create basic layout files
cat > themes/custom/layouts/_default/baseof.html << EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ if .Title }}{{ .Title }} | {{ end }}{{ .Site.Title }}</title>
    {{ \$css := resources.Get "css/main.css" | resources.PostCSS }}
    <link rel="stylesheet" href="{{ \$css.RelPermalink }}">
</head>
<body class="bg-gray-100 min-h-screen">
    <header class="bg-white shadow-md p-4">
        <div class="container mx-auto">
            <h1 class="text-2xl font-bold"><a href="/">{{ .Site.Title }}</a></h1>
        </div>
    </header>
    <main class="container mx-auto p-4">
        {{ block "main" . }}{{ end }}
    </main>
    <footer class="bg-white shadow-md p-4 mt-8">
        <div class="container mx-auto text-center text-gray-600">
            &copy; {{ now.Format "2006" }} {{ .Site.Title }}
        </div>
    </footer>
</body>
</html>
EOL

cat > themes/custom/layouts/_default/single.html << EOL
{{ define "main" }}
<article class="bg-white shadow-md rounded-lg p-6">
    <h1 class="text-3xl font-bold mb-4">{{ .Title }}</h1>
    <div class="prose max-w-none">
        {{ .Content }}
    </div>
</article>
{{ end }}
EOL

cat > themes/custom/layouts/_default/list.html << EOL
{{ define "main" }}
<h1 class="text-3xl font-bold mb-6">{{ .Title }}</h1>
<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
    {{ range .Pages }}
    <a href="{{ .Permalink }}" class="bg-white shadow-md rounded-lg p-6 hover:shadow-lg transition-shadow">
        <h2 class="text-xl font-bold mb-2">{{ .Title }}</h2>
        <p class="text-gray-600">{{ .Summary }}</p>
    </a>
    {{ end }}
</div>
{{ end }}
EOL

cat > themes/custom/layouts/index.html << EOL
{{ define "main" }}
<div class="bg-white shadow-md rounded-lg p-6">
    <h1 class="text-3xl font-bold mb-4">Welcome to my website!</h1>
    <div class="prose max-w-none">
        {{ .Content }}
    </div>
</div>
{{ end }}
EOL

# 6. Create content
mkdir -p content
cat > content/_index.md << EOL
---
title: "Home"
date: $(date +"%Y-%m-%dT%H:%M:%S%z")
draft: false
---

## Hello, I'm Bradley Goetsch

Welcome to my personal website! This is a starter template built with Hugo and Tailwind CSS.

### About Me

I'm passionate about technology and innovation. This space will showcase my projects, thoughts, and experiences.

### What's Next

This is just the beginning. I'll be adding more content and features to this site soon!

EOL

echo "Setup complete! Run 'hugo server' to start the development server."
echo "Then open http://localhost:1313/ to view your site."