# Track and Detect AdBlock usage

AdBlock is the great add-on in most of the cases as the Internet full of scam, spam, and inappropriate ads. Sadly for other, good side of the Internet, publishers are losing revenue. Track how many of your website visitors are using AdBlock plugin with ostr.io web analytics.

Install `adblock-detect` and `ostrio-analytics` NPM packages:

```shell
# For CommonJS (Browser/Node.js):
npm install ostrio-analytics --save
npm install adblock-detect --save

# For Meteor.js
meteor add ostrio:analytics
meteor npm install adblock-detect --save
```

Implement code:

```js
// For CommonJS (Browser/Node.js):
var analyticsTracker = new (require('ostrio-analytics'))('trackingId');
var adblockDetect    = require('adblock-detect');

adblockDetect(function(adblockDetected) {
  if (adblockDetected) {
    analyticsTracker.pushEvent('AdBlock', 'active');
  }
});
```

```js
// For Meteor.js:
import { Meteor }    from 'meteor/meteor';
import Analytics     from 'meteor/ostrio:analytics';
import adblockDetect from 'adblock-detect';

const analyticsTracker = new Analytics('trackingId');
Meteor.startup(() => {
  adblockDetect(function(adblockDetected) {
    if (adblockDetected) {
      analyticsTracker.pushEvent('AdBlock', 'active');
    }
  });
});
```

## Further reading:

- [web-analytics docs](https://github.com/VeliovGroup/ostrio-analytics#analytics-for-ostrio)
