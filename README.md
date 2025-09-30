# SkySplat.org

The official website for SkySplat - bringing 3D Gaussian Splatting to Blender and beyond.

## About

SkySplat.org serves as the central hub for the SkySplat ecosystem, featuring:

- **Blog Posts** - Latest updates, tutorials, and community content
- **Documentation** - Comprehensive guides for all SkySplat tools
- **Technical Articles** - In-depth analysis of 3DGS technology
- **Project Information** - Details about SkySplat Blender and related tools

## Quick Start

### Prerequisites

- Ruby 2.7 or higher
- Bundler gem
- Git

### Local Development

#### Option 1: Using the Setup Script (Recommended)

1. **Clone the repository**
   ```bash
   git clone https://github.com/kyjohnso/skysplat.org.git
   cd skysplat.org
   ```

2. **Run the setup script**
   ```bash
   ./setup.sh
   ```

3. **Start the development server**
   ```bash
   bundle exec jekyll serve
   ```

4. **View the site**
   Open your browser to `http://localhost:4000`

#### Option 2: Using Docker (No Ruby Installation Required)

1. **Clone the repository**
   ```bash
   git clone https://github.com/kyjohnso/skysplat.org.git
   cd skysplat.org
   ```

2. **Start with Docker Compose**
   ```bash
   docker-compose up
   ```

3. **View the site**
   Open your browser to `http://localhost:4000`

#### Option 3: Manual Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/kyjohnso/skysplat.org.git
   cd skysplat.org
   ```

2. **Configure Bundler for local installation**
   ```bash
   bundle config set --local path 'vendor/bundle'
   bundle install
   ```

3. **Run the development server**
   ```bash
   bundle exec jekyll serve
   ```

4. **View the site**
   Open your browser to `http://localhost:4000`

### Building for Production

```bash
bundle exec jekyll build
```

The built site will be in the `_site` directory.

## Site Structure

```
├── _config.yml          # Jekyll configuration
├── _posts/              # Blog posts
├── _docs/               # Documentation pages
├── _articles/           # Technical articles
├── _layouts/            # Page layouts (if custom)
├── _includes/           # Reusable components (if custom)
├── assets/              # CSS, JS, images
│   └── css/
│       └── style.scss   # Custom styles
├── index.md             # Homepage
├── blog.md              # Blog listing page
├── docs.md              # Documentation index
├── articles.md          # Articles index
└── about.md             # About page
```

## Content Management

### Adding Blog Posts

Create a new file in `_posts/` with the format `YYYY-MM-DD-title.md`:

```markdown
---
layout: post
title: "Your Post Title"
date: 2024-01-20 10:00:00 +0000
categories: [category1, category2]
tags: [tag1, tag2]
author: "Author Name"
excerpt: "Brief description of the post"
---

Your content here...
```

### Adding Documentation

Create a new file in `_docs/` with appropriate front matter:

```markdown
---
title: "Documentation Title"
description: "Brief description"
tags: ["tag1", "tag2"]
order: 1
---

Your documentation content...
```

### Adding Articles

Create a new file in `_articles/` with front matter:

```markdown
---
title: "Article Title"
date: 2024-01-20
author: "Author Name"
tags: ["tag1", "tag2"]
excerpt: "Brief description"
read_time: 10
---

Your article content...
```

## Customization

### Styling

The site uses a custom theme based on Minima. Modify `assets/css/style.scss` to customize:

- Colors and branding
- Layout and spacing
- Component styles
- Responsive design

### Configuration

Edit `_config.yml` to modify:

- Site metadata
- Navigation menu
- Plugin settings
- Build options

## Deployment

### GitHub Pages

This site is configured to work with GitHub Pages. Simply push to the `main` branch and GitHub will automatically build and deploy the site.

### Manual Deployment

1. Build the site: `bundle exec jekyll build`
2. Upload the `_site` directory to your web server

### Netlify/Vercel

The site works with modern static site hosts. Use these build settings:

- **Build command**: `bundle exec jekyll build`
- **Publish directory**: `_site`
- **Ruby version**: 2.7 or higher

## Contributing

We welcome contributions to improve the website! Here's how you can help:

### Content Contributions

- **Blog Posts**: Share tutorials, workflows, or project updates
- **Documentation**: Improve existing docs or add new guides
- **Articles**: Write technical deep-dives or research summaries

### Code Contributions

- **Bug Fixes**: Report and fix issues
- **Features**: Add new functionality or improve existing features
- **Design**: Enhance the visual design and user experience

### Contribution Process

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make your changes and test locally
4. Commit with clear messages: `git commit -m "Add: new feature description"`
5. Push to your fork: `git push origin feature/your-feature`
6. Create a Pull Request

## Development Guidelines

### Writing Style

- Use clear, concise language
- Include code examples where appropriate
- Add screenshots for UI-related content
- Follow markdown best practices

### Technical Content

- Test all code examples
- Include prerequisites and dependencies
- Provide troubleshooting information
- Link to related resources

### SEO and Accessibility

- Use descriptive titles and headings
- Include alt text for images
- Ensure good contrast ratios
- Test with screen readers

## Support

- **Issues**: [GitHub Issues](https://github.com/kyjohnso/skysplat.org/issues)
- **Discussions**: [GitHub Discussions](https://github.com/kyjohnso/skysplat.org/discussions)
- **Main Project**: [SkySplat Blender](https://github.com/kyjohnso/skysplat_blender)

## License

This website content is licensed under [CC0 1.0 Universal](LICENSE) - you can freely use, modify, and distribute the content.

The Jekyll theme and code are available under the MIT License.

## Acknowledgments

- Built with [Jekyll](https://jekyllrb.com/) and [Minima theme](https://github.com/jekyll/minima)
- Hosted on [GitHub Pages](https://pages.github.com/)
- Thanks to all contributors and the 3DGS research community

---

*For questions about the SkySplat project itself, visit the [main repository](https://github.com/kyjohnso/skysplat_blender).*