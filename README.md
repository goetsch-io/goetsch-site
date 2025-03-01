# Bradley Goetsch Personal Website

A clean, responsive personal website built with Hugo and custom CSS. This site serves as a portfolio, blog, and personal introduction.

## Features

- Responsive design that works on all devices
- Blog section for sharing thoughts and articles
- Projects showcase for highlighting your work
- About page with professional information
- Clean, minimalist design

## Prerequisites

- [Hugo](https://gohugo.io/getting-started/installing/) (v0.145.0 or later)
- [Node.js](https://nodejs.org/) (for development tools)
- npm (comes with Node.js)

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/bradleygoetsch/goetsch-site.git
   cd goetsch-site
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Run the setup script (if setting up for the first time):
   ```
   bash setup.sh
   ```

## Development

To start the development server:

```
npm run dev
```

Or directly with Hugo:

```
hugo server
```

This will start a local development server at http://localhost:1313/

## Project Structure

- `content/`: Contains all the Markdown files that make up the site content
  - `_index.md`: Homepage content
  - `about/`: About page content
  - `posts/`: Blog posts
  - `projects/`: Project showcases
- `themes/custom/`: Custom theme for the site
  - `layouts/`: HTML templates
  - `static/css/`: CSS stylesheets
- `assets/`: Source files for processed assets
- `public/`: Generated site (created when building)

## Content Management

### Adding a Blog Post

Create a new Markdown file in the `content/posts/` directory:

```
hugo new posts/my-new-post.md
```

Then edit the file with your content.

### Adding a Project

Create a new Markdown file in the `content/projects/` directory:

```
hugo new projects/my-new-project.md
```

## Building for Production

To build the site for production:

```
npm run build
```

Or directly with Hugo:

```
hugo --minify
```

This will generate the static site in the `public/` directory, ready for deployment.

## Deployment

The site can be deployed to any static hosting service:

1. Build the site for production
2. Upload the contents of the `public/` directory to your hosting provider

Recommended hosting options:
- GitHub Pages
- Netlify
- Vercel
- AWS S3 + CloudFront

## Customization

### Changing the Theme

Edit the CSS files in `themes/custom/static/css/` to customize the appearance.

### Modifying Templates

HTML templates are located in `themes/custom/layouts/`. Edit these files to change the structure of the pages.

## License

[MIT License](LICENSE)
