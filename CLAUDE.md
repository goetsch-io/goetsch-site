# Claude Memory File - Deployment Info

## Common Commands

### Check Deployment Status
To check the latest deployment status, run:
```bash
npm run status
```

### Build Site Locally
```bash
npm run build
```

### Serve Site Locally
```bash
npm run serve        # Start static server
npm run serve:open   # Start server and open browser
```

### Development Server
```bash
npm run dev            # Start development server
npm run dev:open       # Start server and open browser
npm run watch:css      # Watch and auto-rebuild CSS
npm run dev:full       # Run Hugo and CSS watcher in parallel
npm run dev:full:open  # Run Hugo and CSS watcher + open browser
```

### Manage Dependencies
```bash
npm run update-deps    # Update package-lock.json to match package.json
npm run fix-deps       # Regenerate package-lock.json from scratch
```

### Deploy Site
```bash
npm run deploy       # Push changes and trigger deployment
```

## Useful Information

### Project Structure
- `content/`: Contains Markdown files for site content
- `themes/custom/`: Contains Hugo templates and layouts
- `assets/`: Contains source CSS/JS files
- `public/`: Contains the built site (generated)
- `build_logs/`: Contains automated build logs

### URLs
- Development: http://localhost:1313
- Production: https://goetsch-site.pages.dev/

### Important Development Notes
- Always run `npm run update-deps` after changing dependencies in package.json
- The CI build uses `npm ci` which requires exact match between package.json and package-lock.json
- If you encounter CI errors about missing dependencies, use `npm run fix-deps`