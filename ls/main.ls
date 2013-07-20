
delay = -> set-timeout &1, &0

dont-reload = no
next = document .querySelector '#next'
link = next .getAttribute 'href'

if link?
  tag = "<link ref='prerender' href='#link'>"

  document .head .insertAdjacentHTML 'beforeend', tag

  delay 1200, ->
    unless dont-reload
      window .location .replace link

  document .body .onmousemove = ->
    dont-reload := yes