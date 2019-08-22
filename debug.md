{% assign image_files = site.static_files | where: "image", true %}
<p>Image files</p>
<p>{{ image_files | jsonify }}</p>

{% assign sorted_images = image_files | date_sort %}
<p>Sorted images</p>
<p>{{ sorted_images | jsonify }}</p>

{% assign reversed_images = sorted_images | reversed %}
<p>Reversed images</p>
<p>{{ reversed_images | jsonify }}</p>

{% assign multi_filter = site.static_files | where: "image", true | date_sort | reversed %}
<p>Multi filter</p>
<p>{{ multi_filter | jsonify }}</p>
