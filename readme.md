# Here will be add generated lolcommits gifs

<section style="display: flex; flex-wrap: wrap; align-items: center; justify-content: center;">
{% assign image_files = site.static_files | where: "image", true %}
{% for img in image_files %}
<img class="lazy" src="{{ site.baseurl }}/loader.gif" data-src="{{ site.baseurl }}{{ img.path }}" width="300" height="225" style="margin: 5px;">
{% endfor %}
</section>

<script src="{{ site.baseurl }}/load-images.js"></script>
