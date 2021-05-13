# Prerendering

Prerendering for JavaScript powered websites. Great solution for PWAs (Progressive Web Apps), SPAs (Single Page Applications), and other websites based on top of front-end JavaScript frameworks like Meteor.js, Vue.js, React.js, Angular.js, Backbone.js, Ember.js, etc. __ostr.io the first service to support ES6/ECMAScript2015 syntax.__

Prerendering operates as middleware and can be easily integrated with Nginx or Apache without extra plugins. Integration with express.js, connect.js, and vanilla node.js server available via NPM package. For Meteor.js integration, we have published Atmosphere package.

## Used Terms:

- "Search Engine" - System that is designed to search for information on the World Wide Web. Like: Google, Yahoo, Bing, etc. [Wiki definition](https://en.wikipedia.org/wiki/Web_search_engine);
- "Crawler" - An Internet bot that systematically browses the World Wide Web. [Wiki definition](https://en.wikipedia.org/wiki/Web_crawler). A crawler is one of the internal parts of Search Engines, messengers, and social networks. Like: Facebook, Viber, WhatsApp, Skype, etc. Mainly used to fetch and show information (image, title, description) about shared link;
- "Spider" - Same as "Crawler";
- "Cache" and "Caching" - Page "rendering" is time and resource consuming operation. To provide best possible response time "prerendered" results will be saved for time defined as "Cache TTL";
- "Cache Freshness" and "Cache TTL" - Time in hours, during this period cache will remain fresh and will be served to all request;
- "Prerendering Engine" - Mainly our internal software build on top of PhantomJS and custom compiled Chromium. It visits websites, runs JavaScript code, and returns HTML as result;
- "(Pre)rendering Endpoint" - Address where located "Prerendering engine", we have 3 differently configured [rendering endpoints](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/rendering-endpoints.md), to fit every case.

## Prerendering ToC:

- [Accelerated Mobile Pages (AMP) Integration](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/amp-support.md)
- [Node.js Integration via NPM](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/node-npm.md)
- [Meteor.js Integration via Atmosphere](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/meteor-atmosphere.md)
- [Nginx Integration](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/nginx.md)
- [Return genuine status code](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/genuine-status-code.md)
- [Client Optimization](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/optimization.md)
- [Server Optimization](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/rendering-endpoints.md)
- [Caching](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/cache.md)
- [Cache purge](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/cache-purge.md)
- [ES6 / ECMAScript 2015 Support](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/es6-support.md)
- [Strip JavaScript](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/strip-javascript.md)
- [Detect Prerendering engine requests during runtime](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/detect-prerendering.md)
- [Detect Prerendering engine requests during runtime (*Meteor specific*)](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/detect-prerendering-meteor.md)
- [Rendering Endpoints](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/rendering-endpoints.md)
- [Learn more about Prerendering](https://ostr.io/info/prerendering)
