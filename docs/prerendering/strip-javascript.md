Prerendering: Strip JavaScript
======

By default, after page is rendered - all JavaScript blocks and file references will be removed from the final result. This is done to avoid unpredictable behavior and results on the web crawler end. We have seen some weird situations with content being rendered multiple times. Although it's recommended to keep this option ON, you're free to turn it off.

![Disable/Enable JS Stripping on Prerendering Screenshot](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/prerendering-stripjs.png?raw=true)