var delay, allowReload, disableReload, body, next, image, link, load, prerenderTag, x$, y$;
delay = function(){
  return setTimeout(arguments[1], arguments[0]);
};
allowReload = true;
disableReload = function(){
  allowReload = false;
  return console.log('reload is disabled');
};
body = document.body;
next = document.querySelector('#next');
image = document.querySelector('#photo img');
link = next.getAttribute('href');
load = function(){
  if (allowReload) {
    return location.replace(link);
  }
};
prerenderTag = document.createElement('link');
x$ = prerenderTag;
x$.setAttribute('rel', 'prerender');
x$.setAttribute('href', link);
document.head.appendChild(prerenderTag);
console.log('inserted tag');
y$ = body;
y$.onmousemove = function(){
  return allowReload = false;
};
y$.onblur = function(){
  return allowReload = false;
};
y$.keydown = function(){
  return allowReload = false;
};
delay(800, load);