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
npm run dev            # Start development server
npm run dev:open       # Start server and open browser automatically
npm run dev:full       # Run Hugo and Tailwind in parallel (best for development)
npm run dev:full:open  # Full development environment with auto-browser open
```

Or directly with Hugo:

```
hugo server
```

This will start a local development server at http://localhost:1313/

For testing the production build:

```
npm run serve       # Build and serve production site
npm run serve:open  # Build, serve, and open browser automatically
```

This will serve the static production site at http://localhost:8000/

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
  - `deploy.yml`: CI/CD pipeline with build, test, and deployment

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

This project uses a hybrid CI/CD approach that combines GitHub Actions for testing and Cloudflare Pages Deploy Hooks for secure deployment.

- See [HYBRID_CICD.md](HYBRID_CICD.md) for detailed instructions on the hybrid CI/CD approach.
- See [CONTINUOUS_DELIVERY.md](CONTINUOUS_DELIVERY.md) for the legacy deployment approach (for reference only).

**Important**: To use the hybrid CI/CD approach, you must:
1. Create a Cloudflare Pages project named `goetsch-site`
2. Set up a Deploy Hook in Cloudflare Pages pointing to the main branch
3. Add the Deploy Hook URL as a GitHub secret named `CLOUDFLARE_DEPLOY_HOOK`
4. Ensure proper build settings in Cloudflare Pages: build command `npm run build` and output directory `public`

For capturing Cloudflare deployment logs (optional):
1. Create a Cloudflare API Token with the following permissions:
   - Account > Cloudflare Pages > Read
   - Account > Account Settings > Read
2. Add the following GitHub secrets:
   - `CLOUDFLARE_API_TOKEN`: Your Cloudflare API token
   - `CLOUDFLARE_ACCOUNT_ID`: Your Cloudflare account ID (found in the URL of your Cloudflare dashboard)
   - `CLOUDFLARE_PROJECT_NAME`: The name of your Cloudflare Pages project (default: 'goetsch-site')

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
- See [HYBRID_CICD.md](HYBRID_CICD.md) for detailed instructions on our hybrid CI/CD approach using Deploy Hooks.
- See [CONTINUOUS_DELIVERY.md](CONTINUOUS_DELIVERY.md) for the legacy deployment approach (for reference only).

This ensures consistent, secure, and efficient development across the team.

## License

[MIT License](LICENSE)
