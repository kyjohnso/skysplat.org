---
layout: page
title: Documentation
permalink: /docs/
---

# Documentation

Comprehensive guides and references for all SkySplat tools and projects.

## Quick Start Guides

<div class="doc-grid">
  <div class="doc-card">
    <h3>🎨 SkySplat Blender</h3>
    <p>Get started with the SkySplat Blender addon for 3D Gaussian Splatting.</p>
    <ul>
      <li><a href="/docs/skysplat-blender/installation/">Installation Guide</a></li>
      <li><a href="/docs/skysplat-blender/quickstart/">Quick Start Tutorial</a></li>
      <li><a href="/docs/skysplat-blender/api/">API Reference</a></li>
    </ul>
  </div>
  
  <div class="doc-card">
    <h3>🔧 3DGS Tools</h3>
    <p>Utilities and tools for working with 3D Gaussian Splatting data.</p>
    <ul>
      <li><a href="/docs/tools/conversion/">Format Conversion</a></li>
      <li><a href="/docs/tools/optimization/">Optimization Tools</a></li>
      <li><a href="/docs/tools/validation/">Data Validation</a></li>
    </ul>
  </div>
</div>

## Documentation Collections

{% assign docs = site.docs | sort: 'order' %}
{% if docs.size > 0 %}
<div class="docs-list">
  {% for doc in docs %}
    <article class="doc-item">
      <h3><a href="{{ doc.url | relative_url }}">{{ doc.title }}</a></h3>
      {% if doc.description %}
        <p>{{ doc.description }}</p>
      {% endif %}
      {% if doc.tags %}
        <div class="tags">
          {% for tag in doc.tags %}
            <span class="tag">{{ tag }}</span>
          {% endfor %}
        </div>
      {% endif %}
    </article>
  {% endfor %}
</div>
{% else %}
<div class="coming-soon">
  <h3>Documentation Coming Soon!</h3>
  <p>We're actively working on comprehensive documentation. Expected sections include:</p>
  <ul>
    <li><strong>SkySplat Blender</strong> - Complete addon documentation</li>
    <li><strong>3DGS Fundamentals</strong> - Understanding Gaussian Splatting</li>
    <li><strong>Workflows</strong> - Best practices and common workflows</li>
    <li><strong>API References</strong> - Technical specifications</li>
    <li><strong>Troubleshooting</strong> - Common issues and solutions</li>
  </ul>
</div>
{% endif %}

## Contributing to Documentation

Found an error or want to improve our docs? We welcome contributions!

- [Edit on GitHub](https://github.com/kyjohnso/skysplat.org)
- [Report an Issue](https://github.com/kyjohnso/skysplat.org/issues)
- [Suggest Improvements](https://github.com/kyjohnso/skysplat.org/discussions)

---

*Documentation is continuously updated. Last updated: {{ site.time | date: "%B %d, %Y" }}*