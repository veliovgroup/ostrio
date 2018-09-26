# [ostr.io](https://ostr.io) changelog

#### [2018-09-25]

- ▲ Monitoring - [UI] Show polling interval in a table
- ▲ Monitoring - [UI] Fix showing "One click setup" detailed info
- ▲ Monitoring - [UI] Fix showing notification trigger settings in the lower right corner of chart preview
- 📈 Analytics - [UX] In "Referrers" section show full URL for single records, otherwise grouped by origin
- 📈 Analytics - [UX] Speed up rendering of data-table (*table below charts*)
- 📈 Analytics - [UX/UX] Various fixes; Fix clicking on same tabs in data-table
- 🕸 Prerendering - Upgrade ES6/7 rendering engine, decreasing rendering time for at least 10% for all users on all plans
- 🕸 Prerendering - Better AMP support, now with dynamic "renderable" content. Now on AMP pages, the prerendering engine will execute all JS scripts except `*ampproject.org`, so Google will recognize it as static AMP page

#### [2018-09-13]

- 🕸 Prerendering - New "render website" feature. Pre-render pages by given path. After the first page is rendered - look for same-origin links to keep pre-rendering all linked pages. "Pre-pre-rendering" eliminates "first request" delay and guarantee the instant response to web-crawlers for TOP SEO score;
- 🕸 Prerendering - __Most wanted feature__. Auto pre-render upon cache expiration. If this feature enabled, all pages which are about to expire will be scheduled for re-rendering;
- 🕸 Prerendering - "Cache browser", browse and edit currently cached pages;
- 🕸 Prerendering - Internal analytics for better SEO and service setup;
- 🕸 Prerendering - [Support for Accelerated Mobile Pages (APM)](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/amp-support.md)
- 🛑📈 Analytics - [Detect and Track __AdBlock__ usage](https://github.com/VeliovGroup/ostrio/blob/master/docs/analytics/detect-adblock.md);
- 📈 Analytics - [Track Accelerated Mobile Pages (AMP) and other static pages](https://github.com/VeliovGroup/ostrio/blob/master/docs/analytics/track-amp.md)
- 📈 Analytics - Fix displayed dates (*for some users charts had wrong month title*);
- 📈 Analytics - Referrers now grouped by the domain name;
- 📈 Analytics - "Development" mode for localhost testing. See [this suggestion](https://github.com/VeliovGroup/ostrio-analytics/issues/2), thanks to @nicooprat;
- 📈 Analytics - Better global JavaScript runtime exceptions/errors tracking, new error tracking panel;
- 📈 Analytics - Globally caught errors are nicely grouped, with additional data about the environment;
- 🤓 Accessibility - Dark and high-contrast version of the website following all guidelines for visually impaired users;
- 👨‍⚖️ Compliance with GDPR;
- 👩‍⚖️ Added more info about our tracking code, DNT, and analytics opt-out to GDPR compliance, ToC, and Privacy policy;
- 🍪 Consent cookies notice.

#### [2017-12-10]

- Minor Prerendering docs update
- Hide "Next" field on paused CRONs and Monitors
- Make pause button great again

#### [2017-12-09]

- __Prerendering__ - Introducing "[Rendering Endpoints](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/rendering-endpoints.md)"
- Upgrade front-face app to [`meteor@1.6.0.1`](https://github.com/meteor/meteor/blob/devel/History.md#v1601-2017-12-08)

#### [2017-12-08]

- Gradients (*the striped lines*) fix for Safari on mobile and desktop
- Minor micro-schema optimization + validation
- SSL certs update
- Fix play/pause icons

#### [2017-12-06]

- Slightly refreshed UI, bringing better UX
- Overall codebase strengthening
- Fix around stoned `reCAPTCHA` challenges
- Update [docs page](https://ostr.io/info/docs)
- This CHANGELOG file is published for first time

#### [2017-12-04]

- Optimizations after scanning with [sonarwhal](https://sonarwhal.com/scanner)
- Better ServiceWorker and PWA Manifest
- __Monitoring__ - Pause/Resume Monitor
- __Monitoring__ - Change check frequency (*interval*)
- __Web-CRON__ - Pause/Resume Task

#### [2017-12-03]

- __Prerendering__ - Expose `IS_PRERENDERING` global variable inside "prerendering" engines, [see this issue](https://github.com/VeliovGroup/spiderable-middleware/issues/4), and [updated docs](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/detect-prerendering.md)
- __Prerendering__ - New rendering farm for __PRO__ and __Business__. Up to 3 seconds load time decrease on __PRO__ and __Business__ plans

#### [2017-12-02]

- Overall codebase optimizations
- Dependencies update
- __Prerendering__ - Update integration docs, [see this commit](https://github.com/VeliovGroup/spiderable-middleware/commit/8d0c55d488d1c3a61606604feec3c8116c447002)

#### [2017-09-20]

- __Prerendering__ - Show total pages in active cache state

#### [2017-09-14]

- Fix for DNS monitoring

#### [2017-08-17]

- Critical fix for SNMP Monitoring

*...This project is started somewhere in the middle of 2015...*
