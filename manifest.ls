
name: 'tuchong-click'
version: '0.0.1'
manifest_version: 2
description: 'click with JS instead of hand'
browser_action:
  default_icon: 'pic/next.png'
icons:
  128: 'pic/next.png'
content_scripts:
  * matches:
      * 'http://*.tuchong.com/*'
      ...
    js:
      * 'lib/main.js'
      ...
    run_at: 'document_end'
  ...