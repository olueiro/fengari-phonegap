[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![#fengari on Freenode](https://img.shields.io/Freenode/%23fengari.png)](https://webchat.freenode.net/?channels=fengari)


# fengari-phonegap-helloworld

Provides anything you need to run [Lua](https://lua.org) ([Fengari](https://fengari.io)) in [PhoneGap](https://phonegap.com/).

### Download

[Download zip](https://github.com/olueiro/fengari-phonegap-helloworld/archive/master.zip) and extract it into `www` folder in your PhoneGap project.

### How to use

#### inline Lua code:
```html
<body>
  <script type="text/lua">
    local js = require("js") --// javascript main object
    local global = js.global --// global javascript object (global.document, global.window etc)

    local window = global.window

    window:alert("Hello World from Lua!") --// use semi-colon to call javascript methods

    -- add your code here...
  </script>
</body>
```
#### external Lua file:
```html
<body>
  <script type="text/lua" src="path/to/your/file.lua"></script>
  
  <!-- Do not use `async` attribute for Lua files -->
  
  <!-- Its recommended to use only local Lua files. However, for remote Lua files
       you must to include Access-Control-Allow-Origin header on requested resource.
  -->
  
</body>
```

### Notes

This project adds a WeakMap polyfill provided by [es6-map-shim](https://github.com/eriwen/es6-map-shim/blob/master/es6-map-shim.js).

There are any modifications over Fengari core.

### License

MIT License

Copyright © 2017 Benoit Giannangeli

Copyright © 2017-2018 Daurnimator

Copyright © 2017-2018 olueiro

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
