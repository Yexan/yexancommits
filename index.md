---
title: Home
---

<h1>{{ page.title }}</h1>

<nav>
  <li><a href="{{ site.baseurl }}">Home</a></li>
  <li><a href="{{ site.baseurl }}/lolcomtest.html">Lolcomtest</a></li>
  <li><a href="{{ site.baseurl }}/rosemood.html">Rosemood</a></li>
  <li><a href="{{ site.baseurl }}/sauws.html">Sauws</a></li>
  <li><a href="{{ site.baseurl }}/marie.html">Marie</a></li>
  <li><a href="{{ site.baseurl }}/all.html">All commits</a></li>
</nav>

<section>
  <h2>Last Commit</h2>
  {% assign image_files = site.static_files | where: "image", true | date_sort | reverse %}
  <img class="lazy" src="{{ site.baseurl }}/loader.gif" data-src="{{ site.baseurl }}{{ image_files.first.path }}" width="640" height="480" style="margin: 10px auto; max-width: 100%; height: auto;">
</section>

<script src="{{ site.baseurl }}/load-images.js"></script>
