---
layout: page
title: Palettes
permalink: /palettes/
order: 99
---

# Color Palettes

Below are your reusable palettes from `_data/palettes.yml`.

{% assign palettes = site.data.palettes.palettes %}
{% for name in palettes %}
{% assign pal = palettes[name] %}

## {{ name | replace: '_', ' ' | capitalize }}
<div class="swatch-row">
{% for hex in pal %}
  <div class="swatch" style="background: {{ hex }}">
    <span class="swatch-label">{{ hex }}</span>
  </div>
{% endfor %}
</div>

{% endfor %}

<script src="/assets/js/palettes.js"></script>
<script>
  // Example: inject CSS variables for first palette
  Palettes.injectCSSVariables("seventies_sunset_beach", "--beach");
</script>
