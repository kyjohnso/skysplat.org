# Migration to Zola

This document explains the migration from Jekyll to Zola, a fast static site generator written in Rust.

## Why Zola?

**Zola** is an excellent alternative to Jekyll with several advantages:

- ✅ **Written in Rust** - Fast, reliable, and memory-safe
- ✅ **Single binary** - No Ruby dependencies or gem management
- ✅ **Fast builds** - Significantly faster than Jekyll
- ✅ **GitHub Pages compatible** - Works seamlessly with GitHub Pages
- ✅ **Built-in features** - Syntax highlighting, Sass compilation, search index
- ✅ **Simple configuration** - TOML-based config file

## Installation

### macOS
```bash
brew install zola
```

### Linux
```bash
# Arch Linux
sudo pacman -S zola

# Ubuntu/Debian (download from GitHub releases)
wget https://github.com/getzola/zola/releases/download/v0.18.0/zola-v0.18.0-x86_64-unknown-linux-gnu.tar.gz
tar -xzf zola-v0.18.0-x86_64-unknown-linux-gnu.tar.gz
sudo mv zola /usr/local/bin/
```

### Windows
```powershell
# Using Scoop
scoop install zola

# Or download from GitHub releases
```

### Verify Installation
```bash
zola --version
```

## Project Structure

The Zola site structure is:

```
.
├── config.toml              # Site configuration
├── content/                 # All content files
│   ├── _index.md           # Homepage
│   ├── about.md            # About page
│   ├── blog/               # Blog posts
│   │   ├── _index.md       # Blog section index
│   │   └── *.md            # Individual posts
│   ├── docs/               # Documentation
│   │   ├── _index.md       # Docs section index
│   │   └── *.md            # Individual docs
│   └── articles/           # Technical articles
│       ├── _index.md       # Articles section index
│       └── *.md            # Individual articles
├── templates/              # HTML templates
│   ├── base.html          # Base template
│   ├── index.html         # Homepage template
│   ├── page.html          # Single page template
│   ├── blog.html          # Blog listing template
│   ├── blog-page.html     # Blog post template
│   ├── docs.html          # Docs listing template
│   ├── docs-page.html     # Doc page template
│   ├── articles.html      # Articles listing template
│   └── article-page.html  # Article page template
├── static/                 # Static files (CSS, images, etc.)
│   └── main.css           # Main stylesheet
└── public/                 # Generated site (created by Zola)
```

## Key Differences from Jekyll

### Front Matter

**Jekyll:**
```yaml
---
layout: post
title: "My Post"
date: 2024-01-20 10:00:00 +0000
categories: [cat1, cat2]
tags: [tag1, tag2]
---
```

**Zola:**
```toml
+++
title = "My Post"
date = 2024-01-20
[taxonomies]
categories = ["cat1", "cat2"]
tags = ["tag1", "tag2"]
+++
```

### Templates

- Jekyll uses Liquid templating
- Zola uses Tera templating (similar to Jinja2)

### Configuration

- Jekyll: `_config.yml` (YAML)
- Zola: `config.toml` (TOML)

## Local Development

### Build and Serve
```bash
# Serve with live reload (default: http://127.0.0.1:1111)
zola serve

# Serve on a different port
zola serve --port 8080

# Serve and make accessible on local network
zola serve --interface 0.0.0.0 --port 8080
```

### Build for Production
```bash
# Build the site (output to ./public)
zola build

# Build with base URL override
zola build --base-url https://skysplat.org
```

### Check for Issues
```bash
# Check content and templates for errors
zola check
```

## GitHub Pages Deployment

The site is configured to deploy automatically to GitHub Pages using GitHub Actions.

### Setup Steps

1. **Enable GitHub Pages**
   - Go to repository Settings → Pages
   - Source: GitHub Actions

2. **Push to main branch**
   - The workflow in `.github/workflows/deploy.yml` will automatically:
     - Install Zola
     - Build the site
     - Deploy to GitHub Pages

3. **Access your site**
   - Your site will be available at `https://yourusername.github.io/repository-name/`
   - Or your custom domain if configured

### Manual Deployment

If you prefer manual deployment:

```bash
# Build the site
zola build

# Deploy the public/ directory to your hosting provider
```

## Content Migration

All content has been migrated from Jekyll to Zola format:

- ✅ Blog posts: `_posts/` → `content/blog/`
- ✅ Documentation: `_docs/` → `content/docs/`
- ✅ Articles: `_articles/` → `content/articles/`
- ✅ Pages: `*.md` → `content/*.md`

### Front Matter Changes

The front matter has been converted from YAML to TOML format with appropriate Zola conventions.

## Features

### Syntax Highlighting
Zola has built-in syntax highlighting. Code blocks are automatically highlighted:

````markdown
```rust
fn main() {
    println!("Hello, Zola!");
}
```
````

### RSS Feed
Automatically generated at `/feed.xml`

### Search Index
Built-in search index generation (enable in `config.toml`)

### Sass Compilation
Automatic Sass/SCSS compilation (enable in `config.toml`)

## Troubleshooting

### Port Already in Use
```bash
# Use a different port
zola serve --port 8080
```

### Build Errors
```bash
# Check for errors
zola check

# Build with verbose output
zola build --verbose
```

### Template Errors
- Check template syntax in `templates/`
- Ensure all required blocks are defined
- Verify variable names match content front matter

## Resources

- [Zola Documentation](https://www.getzola.org/documentation/)
- [Zola GitHub Repository](https://github.com/getzola/zola)
- [Tera Template Documentation](https://tera.netlify.app/docs/)
- [TOML Specification](https://toml.io/)

## Next Steps

1. Install Zola: `brew install zola` (macOS) or see installation instructions above
2. Test locally: `zola serve`
3. Make any necessary adjustments to content or templates
4. Push to GitHub to trigger automatic deployment
5. Remove old Jekyll files once satisfied with the migration

## Comparison: Jekyll vs Zola

| Feature | Jekyll | Zola |
|---------|--------|------|
| Language | Ruby | Rust |
| Dependencies | Many gems | Single binary |
| Build Speed | Slower | Very fast |
| Configuration | YAML | TOML |
| Templates | Liquid | Tera |
| Installation | Complex | Simple |
| GitHub Pages | Native | Via Actions |

## Old Jekyll Files

The following Jekyll files are no longer needed and can be removed after verifying the Zola site works:

- `_config.yml`
- `Gemfile`
- `Gemfile.lock`
- `_posts/` (migrated to `content/blog/`)
- `_docs/` (migrated to `content/docs/`)
- `_articles/` (migrated to `content/articles/`)
- `blog.md`, `docs.md`, `articles.md` (replaced by section indexes)
- `docker-compose.yml` (if using Docker for Jekyll)
- `setup.sh` (Jekyll setup script)

Keep these files for reference until you're confident the migration is complete.