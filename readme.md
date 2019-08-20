# Here will be add generated lolcommits gifs

## Configure

In a git folder enable lolcommits

````
lolcommits --capture --animate 2 --fork
```

Then edit the lolcommit hook to look like :

```
### lolcommits hook (begin) ###
LANG="fr_FR.UTF-8" && PATH="$PATH:/usr/bin:/usr/local/bin" && if [ ! -d "$GIT_DIR/rebase-merge" ] && [ "$LOLCOMMITS_CAPTURE_DISABLED" != "true" ]; then LOLCOMMITS_DIR=/Users/adrien.martinet/Documents/Sites/lab/yexancommits/img lolcommits --capture --animate 2 --fork; /Users/adrien.martinet/Documents/Sites/lab/yexancommits/commithook.sh; fi
###  lolcommits hook (end)  ###
```

## GIFS

<section style="display: flex; flex-wrap: wrap; align-items: center; justify-content: center;">
{% assign image_files = site.static_files | where: "image", true %}
{% for img in image_files %}
<img class="lazy" src="{{ site.baseurl }}/loader.gif" data-src="{{ site.baseurl }}{{ img.path }}" width="300" height="225" style="margin: 5px;">
{% endfor %}
</section>

<script src="{{ site.baseurl }}/load-images.js"></script>
