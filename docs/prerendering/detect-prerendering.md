Detect request from Prerendering engine during runtime
======

Prerendering engine will set `window.IS_PRERENDERING` global variable to `true`. Detecting request from prerendering engine might be as easy as:
```js
if (window.IS_PRERENDERING) {
  // This request is coming from Prerendering engine
}
```

__Note__: `window.IS_PRERENDERING` might be `undefined` on initial page load, and may change during runtime. That's why we recommend to pre-define a setter for `IS_PRERENDERING`:
```js
let _is_prerendering = false;
Object.defineProperty(window, 'IS_PRERENDERING', {
  set(val) {
    _is_prerendering = val;
    if (_is_prerendering === true) {
      // This request is coming from Prerendering engine
    }
  },
  get() {
    return _is_prerendering;
  }
});
```