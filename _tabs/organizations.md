---
layout: page
icon: fas fa-landmark
order: 2
title: Organizations
---

I am privileged to have supporting roles in several important organizations relating to civic technology, science communication, evironmental justie & advocacy, and more.

<div class="organization-list-container">
{% for org_item in site.data.organizations %}
  {% include organization_box.html item=org_item %}
{% endfor %}
</div>
