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
- `.github/workflows/`: GitHub Actions workflow files
  - `test.yml`: Build and test workflow for quality assurance
  - `deploy.yml`: Continuous delivery workflow (legacy approach)

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

### Manual Deployment

1. Build the site for production
2. Upload the contents of the `public/` directory to your hosting provider

### Automated Deployment (Recommended)

This project uses a hybrid CI/CD approach that combines GitHub Actions for testing and Cloudflare Pages for deployment.

- See [HYBRID_CICD.md](HYBRID_CICD.md) for detailed instructions on the hybrid CI/CD approach.
- See [CONTINUOUS_DELIVERY.md](CONTINUOUS_DELIVERY.md) for the legacy GitHub Actions to Cloudflare Pages deployment pipeline.

Recommended hosting options:
- Cloudflare Pages (with continuous delivery)
- GitHub Pages
- Netlify
- Vercel
- AWS S3 + CloudFront

## Customization

### Changing the Theme

Edit the CSS files in `themes/custom/static/css/` to customize the appearance.

### Modifying Templates

HTML templates are located in `themes/custom/layouts/`. Edit these files to change the structure of the pages.

## Team Collaboration & Development Workflow

For teams working on this project, we follow a structured development workflow with defined roles, branching strategies, and CI/CD practices.

- See [DEVELOPMENT_WORKFLOW.md](DEVELOPMENT_WORKFLOW.md) for information on team roles, development workflow, CI/CD setup, and project management.
- See [BRANCHING_STRATEGY.md](BRANCHING_STRATEGY.md) for detailed guidance on our Git branching strategy, including when and how to create branches.
- See [GITHUB_PROJECTS_SETUP.md](GITHUB_PROJECTS_SETUP.md) for instructions on setting up and using GitHub Projects to track project status.
- See [HYBRID_CICD.md](HYBRID_CICD.md) for detailed instructions on our hybrid CI/CD approach.
- See [CONTINUOUS_DELIVERY.md](CONTINUOUS_DELIVERY.md) for the legacy automated deployment pipeline.

This ensures consistent, secure, and efficient development across the team.

## License

[MIT License](LICENSE)
