---
layout: post
title: "Personal Collection"
description: "Mechanical Puzzle Collection"
importance: 5
abstract: "List of the puzzles in my collection. I have an affinity towards vintage and advertisement puzzles."
---

<table>
  <tbody>
{% for category in site.data.puzzles %}
    <tr class="header">
      <td colspan="5" style="text-align: left">{{category.name}}</td>
    </tr>
{% for subcategory in category.subcategories %}
    <tr class="subheader">
      <td colspan="5" style="text-align: left">&nbsp;> {{subcategory.name}}</td>
    </tr>
    <tr>
      <th></th>
      <th>Name</th>
      <th>Maker / Advertiser</th>
      <th>Date</th>
      <th>Description</th>
    </tr>
{% for puzzle in subcategory.puzzles %}
{% for item in puzzle.items %}
    <tr>
      <td>
        <img src="{{site.baseurl}}/assets/thumbs/{{item.img}}" width="200" height="200">
      </td>
      <td>{{puzzle.name}}<br> {{item.name}}</td>
      {% if item.maker %}
      <td>{{item.maker}}</td>
      {% else %}
      <td>{{item.advertiser}}</td>
      {% endif %}
      <td>{{item.year}}</td>
      <td>{{item.note}}</td>
    </tr>
{% endfor %}
{% endfor %}
{% endfor %}
{% endfor %}
  </tbody>
</table>
