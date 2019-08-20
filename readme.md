# Here will be add generated lolcommits gifs

{% assign image_files = site.static_files | where: "image", true %}
{% for img in image_files %}
<img src="{{ site.baseurl }}{{ img.path }}">
{% endfor %}
