# Here will be add generated lolcommits gifs

## Configure

In a git folder enable lolcommits

```
lolcommits --enable --animate 2 --fork
```

Then edit the lolcommit hook to look like :

```
### lolcommits hook (begin) ###
LANG="fr_FR.UTF-8" && PATH="$PATH:/usr/bin:/usr/local/bin" && if [ ! -d "$GIT_DIR/rebase-merge" ] && [ "$LOLCOMMITS_CAPTURE_DISABLED" != "true" ]; then LOLCOMMITS_DIR=/Users/adrien.martinet/Documents/Sites/lab/yexancommits/img lolcommits --capture --animate 2 --fork; /Users/adrien.martinet/Documents/Sites/lab/yexancommits/commithook.sh; fi
###  lolcommits hook (end)  ###
```

--- 

If you want a new project to be displayed on his own page :

Open `_config.yml` and add the following in defaults : 

```
defaults:
  -
    scope:
      path: "img/XXXXXX" // name of the git repo
    values:
      XXXXXX: true // name of the identifier / title you want to display
```

Create a md on the root folder for the new for exemple : `my_awesome_project.md`

```
{% include gallery.html projectname="myawesomeproject" %} // myawesomeproject => the scope value

```

Add the new link in the menu in `index.md` :

```
<nav>
  ...
  <li><a href="{{ site.baseurl }}/my_awesome_project.html">My awesome project</a></li>
  ...
</nav>
```
