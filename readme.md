# Here will be add generated lolcommits gifs

<section style="display: flex; flex-wrap: wrap; align-items: center; justify-content: center;">
{% assign image_files = site.static_files | where: "image", true %}
{% for img in image_files %}
<img class="lazy" src="https://vignette.wikia.nocookie.net/harrypotter/images/c/c4/PromoHP2_Gilderoy_Lockhart_4.jpg/revision/latest?cb=20120410202927&path-prefix=fr" data-src="{{ site.baseurl }}{{ img.path }}" width="300" height="225" style="margin: 5px;">
{% endfor %}
</section>

<script src="{{ site.baseurl }}/load-images.js"></script>
