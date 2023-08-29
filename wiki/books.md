---
layout: post
title: "Puzzle Book Collection"
description: "Mechanical Puzzle Books"
importance: 5
abstract: "Here are the puzzle books that I either own or there is a free copy available online."
---

<table>
  <tbody>
{% for book in site.data.books %}
    <tr>
      <td>
        <img src="{{site.baseurl}}/assets/books/{{book.img}}" height="200">
      </td>
{% if book.url %}
      <td><a href="{{book.url}}" target="\_blank">{{book.title}}</a> ({{book.year}})<br> {{book.authors}}</td>
{% else %}
      <td>{{book.title}} ({book.year}})<br> {{book.authors}}</td>
{% endif %}
      <td>{{book.notes}}</td>
    </tr>
{% endfor %}
  </tbody>
</table>
