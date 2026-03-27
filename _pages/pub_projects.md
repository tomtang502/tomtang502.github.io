---
layout: page
permalink: /publications-projects/
title: Publications & Projects
description: Publications and projects sorted by year.
nav: true
nav_order: 2
display_categories: [Computer Systems and Networks, AI & DL]
---

<div class="publications-projects">
{% comment %} Collect all project years {% endcomment %}
{% assign proj_years = site.projects | map: "year" | compact | uniq | sort | reverse %}

{% comment %} Generate a broad year range to cover publications {% endcomment %}
{% assign all_years = "" | split: "" %}
{% for i in (0..15) %}
  {% assign y = 2030 | minus: i %}
  {% assign all_years = all_years | push: y %}
{% endfor %}

{% comment %} Merge project years into the range and deduplicate {% endcomment %}
{% for y in proj_years %}
  {% unless all_years contains y %}
    {% assign all_years = all_years | push: y %}
  {% endunless %}
{% endfor %}
{% assign all_years = all_years | sort | reverse %}

{% for y in all_years %}
  {% assign year_projects = site.projects | where_exp: "item", "item.year == y" %}
  {% assign filtered_projects = "" | split: "" %}
  {% for project in year_projects %}
    {% if page.display_categories contains project.category %}
      {% assign filtered_projects = filtered_projects | push: project %}
    {% endif %}
  {% endfor %}

  {% assign has_projects = false %}
  {% if filtered_projects.size > 0 %}
    {% assign has_projects = true %}
  {% endif %}

  <div class="year-section">
    <h2 class="bibliography" id="y{{ y }}">{{ y }}</h2>
    <div class="pub-wrapper">
      <h3 class="pub-proj-col-header">Publications</h3>
      <div class="publications">
        {% bibliography --query @*[year={{ y }}] --group_by none %}
      </div>
    </div>

    {% if has_projects %}
      <h3 class="pub-proj-col-header">Projects</h3>
      <div class="row row-cols-1">
        {% assign sorted_projects = filtered_projects | sort: "importance" %}
        {% for project in sorted_projects %}
          {% include projects_horizontal.liquid %}
        {% endfor %}
      </div>
    {% endif %}
  </div>
{% endfor %}
</div>
