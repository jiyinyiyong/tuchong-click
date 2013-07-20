var delay, dontReload, next, link, tag;
delay = function(){
  return setTimeout(arguments[1], arguments[0]);
};
dontReload = false;
next = document.querySelector('#next');
link = next.getAttribute('href');
if (link != null) {
  tag = "<link ref='prerender' href='" + link + "'>";
  document.head.insertAdjacentHTML('beforeend', tag);
  delay(1200, function(){
    if (!dontReload) {
      return window.location.replace(link);
    }
  });
  document.body.onmousemove = function(){
    return dontReload = true;
  };
}