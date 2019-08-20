---
---

document.addEventListener 'DOMContentLoaded', ->
  lazyImages = [].slice.call(document.querySelectorAll('img.lazy'))
  active = false

  lazyLoad = ->
    if active == false
      active = true
      setTimeout (->
        lazyImages.forEach (lazyImage) ->
          if lazyImage.getBoundingClientRect().top <= window.innerHeight and lazyImage.getBoundingClientRect().bottom >= 0 and getComputedStyle(lazyImage).display != 'none'
            lazyImage.src = lazyImage.dataset.src
            lazyImage.srcset = lazyImage.dataset.srcset
            lazyImage.classList.remove 'lazy'
            lazyImages = lazyImages.filter((image) ->
              image != lazyImage
            )
            if lazyImages.length == 0
              document.removeEventListener 'scroll', lazyLoad
              window.removeEventListener 'resize', lazyLoad
              window.removeEventListener 'orientationchange', lazyLoad
          return
        active = false
        return
      ), 200
    return

  document.addEventListener 'scroll', lazyLoad
  window.addEventListener 'resize', lazyLoad
  window.addEventListener 'orientationchange', lazyLoad
  return
