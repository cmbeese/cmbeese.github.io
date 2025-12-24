---
layout: page
title: Gallery
permalink: /gallery/
order: 5
---

# Gallery

<div class="gallery-grid">
  {% for image in site.static_files %}
    {% if image.path contains 'images/gallery' %}
      <div class="gallery-item">
        <img src="{{ image.path }}" alt="{{ image.basename }}">
      </div>
    {% endif %}
  {% endfor %}
</div>

---

*Place your gallery images in `/images/gallery/` folder and they will automatically appear here.*

*For now, you can manually add images:*

<div class="gallery-grid">
  <img src="/images/sil-1.jpg" alt="Gallery image 1">
  <img src="/images/sil-2.jpg" alt="Gallery image 2">
</div>
