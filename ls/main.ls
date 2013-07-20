
delay = -> set-timeout &1, &0

allow-reload = yes

disable-reload = ->
  allow-reload := false
  console.log 'reload is disabled'

body = document .body
next = document .querySelector '#next'
image = document .querySelector '#photo img'
link = next .getAttribute 'href'

load = -> location .replace link if allow-reload

prerender-tag = document .createElement 'link'
prerender-tag
  ..set-attribute 'rel', 'prerender'
  ..set-attribute 'href', link
document .head .append-child prerender-tag

console.log 'inserted tag'

body
  ..onmousemove = -> allow-reload := no
  ..onblur = -> allow-reload := no
  ..keydown = -> allow-reload := no

delay 800, load