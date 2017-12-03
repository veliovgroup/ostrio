Detect request from Prerendering engine in Meteor.js
======

Prerendering engine will set `window.IS_PRERENDERING` global variable to `true`. As in Meteor everything should be reactive, let's bound it with `ReactiveVar`:

```js
const IS_PRERENDERING = new ReactiveVar(false);
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