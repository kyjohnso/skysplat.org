---
layout: page
title: Articles
permalink: /articles/
---

# Technical Articles

In-depth technical articles about 3D Gaussian Splatting research, implementation details, and best practices.

## Featured Articles

{% assign articles = site.articles | sort: 'date' | reverse %}
{% if articles.size > 0 %}
<div class="articles-list">
  {% for article in articles %}
    <article class="article-item">
      <h2><a href="{{ article.url | relative_url }}">{{ article.title }}</a></h2>
      <p class="article-meta">
        {{ article.date | date: "%B %d, %Y" }}
        {% if article.author %} • by {{ article.author }}{% endif %}
        {% if article.read_time %} • {{ article.read_time }} min read{% endif %}
      </p>
      {% if article.excerpt %}
        <div class="article-excerpt">
          {{ article.excerpt }}
        </div>
      {% endif %}
      {% if article.tags %}
        <div class="tags">
          {% for tag in article.tags %}
            <span class="tag">{{ tag }}</span>
          {% endfor %}
        </div>
      {% endif %}
      <a href="{{ article.url | relative_url }}" class="read-more">Read full article →</a>
    </article>
  {% endfor %}
</div>
{% else %}
<div class="coming-soon">
  <h3>Articles Coming Soon!</h3>
  <p>We're preparing comprehensive technical articles covering:</p>
  
  <div class="article-preview-grid">
    <div class="preview-card">
      <h4>🧮 Mathematics of 3DGS</h4>
      <p>Deep dive into the mathematical foundations of 3D Gaussian Splatting, including covariance matrices, spherical harmonics, and optimization techniques.</p>
    </div>
    
    <div class="preview-card">
      <h4>🎨 Blender Integration Techniques</h4>
      <p>Technical details on how SkySplat Blender integrates with Blender's architecture, including viewport rendering and data structures.</p>
    </div>
    
    <div class="preview-card">
      <h4>⚡ Performance Optimization</h4>
      <p>Strategies for optimizing 3DGS rendering performance, memory usage, and quality trade-offs in real-world applications.</p>
    </div>
    
    <div class="preview-card">
      <h4>🔄 Format Conversion</h4>
      <p>Technical guide to converting between different 3DGS formats, handling coordinate systems, and maintaining data integrity.</p>
    </div>
    
    <div class="preview-card">
      <h4>🧪 Research Applications</h4>
      <p>Exploring cutting-edge research applications of 3DGS in computer vision, robotics, and virtual reality.</p>
    </div>
    
    <div class="preview-card">
      <h4>🛠️ Custom Tool Development</h4>
      <p>Building custom tools and extensions for 3DGS workflows, including Python APIs and integration patterns.</p>
    </div>
  </div>
</div>
{% endif %}

## Article Categories

- **Fundamentals** - Core concepts and mathematical foundations
- **Implementation** - Technical implementation details and code examples  
- **Performance** - Optimization techniques and benchmarking
- **Research** - Latest research developments and applications
- **Workflows** - Practical workflows and best practices
- **Tools** - Custom tools and utility development

## Contributing Articles

Interested in contributing a technical article? We welcome submissions from the community!

- **Research Papers** - Summaries and explanations of recent 3DGS research
- **Implementation Guides** - Detailed technical tutorials
- **Case Studies** - Real-world applications and lessons learned
- **Tool Reviews** - Analysis of 3DGS tools and software

[Submit an Article](https://github.com/kyjohnso/skysplat.org/discussions/new?category=article-proposals){: .btn .btn-primary}

---

*Articles are peer-reviewed by the community to ensure technical accuracy and clarity.*