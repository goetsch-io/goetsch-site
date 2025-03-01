# Claude Memory File

## Common Commands

### Check Deployment Status
To check the latest deployment status, run:
```bash
cat build_logs/claude/status.md
```

### Build Site Locally
```bash
npm run build
```

### Serve Site Locally
```bash
npm run serve
```

### Development Server
```bash
npm run dev
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