---
layout: page
title: Blog
permalink: /blog/
---

# Latest Posts

Stay up to date with the latest developments in 3D Gaussian Splatting, SkySplat tools, and Blender integration.

<div class="posts">
  {% for post in site.posts %}
    <article class="post">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">{{ post.date | date: "%B %d, %Y" }}</p>
      <div class="post-excerpt">
        {{ post.excerpt }}
      </div>
      <a href="{{ post.url | relative_url }}" class="read-more">Read more →</a>
    </article>
  {% endfor %}
</div>

{% if site.posts.size == 0 %}
<div class="no-posts">
  <h3>Coming Soon!</h3>
  <p>We're working on exciting blog content about 3D Gaussian Splatting and Blender integration. Check back soon for:</p>
  <ul>
    <li>Getting started with SkySplat Blender</li>
    <li>3DGS optimization techniques</li>
    <li>Real-world use cases and workflows</li>
    <li>Community spotlights and tutorials</li>
  </ul>
</div>
{% endif %}