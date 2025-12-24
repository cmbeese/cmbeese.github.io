---
layout: page
title: Gallery
permalink: /gallery/
---

# Gallery

<div class="gallery-grid" style="display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 1rem; margin: 2rem 0;">
  {% for image in site.static_files %}
    {% if image.path contains 'images/gallery' %}
      <div class="gallery-item">
        <img src="{{ image.path }}" alt="{{ image.basename }}" style="width: 100%; height: auto;">
      </div>
    {% endif %}
  {% endfor %}
</div>

---

*Place your gallery images in `/images/gallery/` folder and they will automatically appear here.*
