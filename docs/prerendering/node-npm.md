Node.js Integration via NPM
======

 - Learn more - [what is Prerendering and why you need it](https://ostr.io/info/prerendering)
 - For more detailed info, examples and API see [`spiderable-middleware` package repository](https://github.com/VeliovGroup/spiderable-middleware).

This integration will work with any Node.js solution which follow Node's middleware convention, like: [express](https://www.npmjs.com/package/express), [connect](https://www.npmjs.com/package/connect), [vanilla Node.js server](https://nodejs.org/api/http.html), and others.

### Installation
```shell
npm install spiderable-middleware --save
```

### Update HTML Markup
To cause special behavior of web crawlers on JavaScript powered websites use `fragment` meta tag. Although it's officially deprecated by Google search engine, it's may be used by other search engines and web crawlers. [Learn more](https://developers.google.com/webmasters/ajax-crawling/docs/specification):
```html
<html>
  <head>
    <meta name="fragment" content="!">
    <!-- ... -->
  </head>
  <body>
    <!-- ... -->
  </body>
</html>
```

### Middleware integration
[See all examples here](https://github.com/VeliovGroup/spiderable-middleware/tree/master/examples).
```js
'use strict';
var http       = require('http');
var Spiderable = require('spiderable-middleware');
var spiderable = new Spiderable({
  rootURL: 'http://example.com',
  serviceURL: 'https://render.ostr.io',
  auth: 'APIUser:APIPass'
});

var requestListener = function (req, res) {
  spiderable.handler(req, res, function () {
    res.writeHead(200, {'Content-Type': 'text/plain; charset=UTF-8'});
    res.end('Hello vanilla NodeJS!');
  });
};

http.createServer(requestListener).listen(3000);
```