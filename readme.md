# Here will be add generated lolcommits gifs

{% for img in site.static_files %}
<img src="{{ site.baseurl }}{{ img.path }}">
{% endfor %}
