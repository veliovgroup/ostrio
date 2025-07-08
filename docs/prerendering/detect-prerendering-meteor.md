# Detect request from Prerendering engine in Meteor.js

When requests are coming from pre-rendering engine it can be detected in JS-runtime (e.g. front-end code)

## Detect that request is coming from pre-rendering engine

Pre-rendering engine will set `window.IS_PRERENDERING` global variable to `true`. As in Meteor everything should be reactive, let's bound it with `ReactiveVar`:

```js
const IS_PRERENDERING = new ReactiveVar(window.IS_PRERENDERING || false);
Object.defineProperty(window, 'IS_PRERENDERING', {
  set(val) {
    IS_PRERENDERING.set(val);
  },
  get() {
    return IS_PRERENDERING.get();
  }
});

// Make globally available Blaze helper,
// Feel free to omit this line in case if you're not using Blaze
// or going to handle logic in JavaScript part
Template.registerHelper('IS_PRERENDERING', () => IS_PRERENDERING.get());
```

__Note__: `window.IS_PRERENDERING` might be `undefined` on initial page load, and may change during runtime.

## Detect type of the pre-rendering engine

Like browsers, crawler, and bots come as "mobile" (small screen touch-devices) or as "desktop" (large screens without touch-events) the pre-rendering engine has the same two types. For cases when content needs to get optimized for different screens pre-rendering engine will set `window.IS_PRERENDERING_TYPE` global variable to `desktop` or `mobile`
