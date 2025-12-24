---
layout: page
title: Projects
permalink: /projects/
order: 4
---

# Research Projects

{% for project in site.projects %}
  <div class="project-item">
    <h2><a href="{{ project.url }}">{{ project.title }}</a></h2>
    <p>{{ project.excerpt }}</p>
  </div>
{% endfor %}

---

## Current Projects

### NOAA ACLIM & GOACLIM
Climate Integrated Modeling projects for Alaska and Gulf of Alaska marine ecosystems

### Mesophotic Ecosystems Research
Marsden-funded project investigating temperate mesophotic ecosystems using ecosystem modeling

### MizerReef Development
R package development for coral reef ecosystem modeling

---

*Create individual project pages in the `_projects/` folder for detailed information*
