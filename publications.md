---
layout: page
title: Publications
permalink: /publications/
---

# Publications

For a complete and up-to-date list of publications, please visit my [Google Scholar profile](https://scholar.google.com/).

## Selected Publications

{% for pub in site.data.publications.publications %}
<div class="publication-item" style="margin-bottom: 2rem;">
  <h3>{{ pub.title }}</h3>
  <p><em>{{ pub.authors }}</em></p>
  <p><strong>{{ pub.journal }}</strong>, {{ pub.year }}, {{ pub.volume }}({{ pub.issue }}), {{ pub.pages }}</p>
  <p><a href="{{ pub.url }}" target="_blank">DOI: {{ pub.doi }}</a></p>
</div>
{% endfor %}

---

*This page can be automatically populated from your BibTeX file using Jekyll plugins.*
