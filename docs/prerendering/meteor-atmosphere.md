Meteor.js Integration via Atmosphere
======

 - Learn more - [what is Prerendering and why you need it](https://ostr.io/info/prerendering)
 - For more info see [`ostrio:spiderable-middleware` package on Atmosphere](https://atmospherejs.com/ostrio/spiderable-middleware).

### Installation
```shell
meteor add webapp
meteor add ostrio:spiderable-middleware
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
[See more examples here](https://github.com/VeliovGroup/spiderable-middleware/tree/master/examples).
```js
import Spiderable from 'meteor/ostrio:spiderable-middleware';

WebApp.connectHandlers.use(new Spiderable({
  rootURL: 'http://example.com',
  serviceURL: 'https://render.ostr.io',
  auth: 'APIUser:APIPass'
}));
```