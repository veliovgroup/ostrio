# [ostr.io](https://ostr.io) changelog

#### [v.Next]

- 👷‍♂️🏗 wip

#### [2020-04-04]

- 👷 Fix "next check" when changing monitor's check frequency;
- 👨‍💻 Better UX during sign up flow.

#### [2020-03-16]

- 📋 Update GDPR - Add info about using and processing IP-addresses;
- 📋 Update Privacy Policy - Add info about using and processing IP-addresses;
- 📋 Add CCPR compliance to Privacy Policy;
- 📋 Update User Agreement - Minor styling and wording update;
- 📋 Update Disclaimer - Minor styling and wording update;
- ⚡️ Update AMP pages;
- 👨‍💻 Overall updates to documentation and texts on our website;
- 🗺 [Sitemap](https://ostr.io/info/sitemap) update.

#### [2020-03-02]

Our service and all its components just landed a massive upgrade. Last week we released a series of updates across our infrastructure, micro-services, and servers.

We have introduced “Available Services” with direct links to viewing, creating, and managing services. These changes dramatically reduce navigation clutter and help to observe individual server properties in a single place.

Another feature presented in a server’s panel — “Related Notifications,” where you can observe and manage all notifications, alerts, and warnings for this individual server. Similarly, the “Related Notifications” section introduced at “Domains,” “Monitoring,” and “Web-CRON” panels.

You are welcome to read in-depth insights about the latest updates to our service in [our Medium blog](https://medium.com/@ostr.io/march-2020-whats-new-b17178704d59).

- 👨‍🎨 Overall UI refactoring for best UX;
- 🎛 __Make "Server" panel great again:__
  - 👨‍✈️ Add "Available Services" with short-links to managing websec, pre-rendering, web analytics, monitoring endpoints, and web-CRON tasks services related __only__ to this server;
  - 🔔 Add "Related Notifications" with __all__ notifications related __only__ to this __server__, including notifications for domain WebSec, monitoring endpoints and web-CRON tasks;
  - 👨‍🎨 UI refactoring for better navigation and user experience
- 🌎 __Domains:__
  - 🔔 Add "Related Notifications" with __all__ notifications related __only__ to this __domain__ (WebSec/DNS/Whois/SSL/TLS);
  - 👨‍🎨 UI refactoring for better navigation and user experience;
- 🔭 __Monitoring:__
  - 🔔 Add "Related Notifications" with __all__ notifications related __only__ to this __endpoint__ (HTTP/SNMP/API);
  - 👨‍🎨 UI refactoring for better navigation and user experience;
- 📈 __Analytics:__
  - 📡 Add support for Beacon API;
  - 🐞 Better __Global Errors__ collection and reporting;
  - 📦 Update [open source tracking code](https://github.com/VeliovGroup/ostrio-analytics#analytics-for-ostrio);
  - 👨‍🎨 UI refactoring for better navigation and user experience;
- 🤖 __Pre-rendering:__
  - 📱 Add support for "mobile" crawlers;
  - 🚀 Update server infrastructure gaining at least 12% rendering speed;
  - 🤖 Pre-render a website as "mobile" or "desktop" crawler;
  - 🤖 Collect data about crawler's user-agent;
  - 📋 Add example for pre-rendering via cURL;
  - 📦 Update [open source libraries](https://github.com/VeliovGroup/spiderable-middleware);
  - 👨‍🎨 UI refactoring for better navigation and user experience;
- ⏰ __Web-CRON:__
  - 🔔 Add "Related Notifications" with __all__ notifications related to __only__ this __task__;
  - 👨‍💻 Better notifications and error-reports;
  - 👨‍🎨 UI refactoring for better navigation and user experience;

__Do not forget__: our website is a fully-featured progressive web application (PWA). [Install it](https://twitter.com/ostrio_service/status/1189478520034136064) as a "native" mobile app on [iOS](https://www.instagram.com/stories/highlights/17970561190165807) and Android.

#### [2019-12-03]

- 👷‍♂️ Micro-services refactoring
- 👨‍💻 This update is mainly focused on micro-services efficiency and DB performance

#### [2019-12-02]

- 📲 Add support for web-push-notifications (Support: Galaxy PWA, Android Internet, Opera, Chrome, Firefox)!
- 📱 Enhancements to PWA implementation
- ⚡️ JavaScript runtime and scripts evaluation timing improvements
- 👷‍♂️ This release is mainly focused on performance and speed improvements on mobile devices as well as PWA support with push-notifications on selected devices and browsers
- 👷‍ HTML: Change `referrer` meta-tag value to `origin`, *was `same-origin`*; (*revert last release changes*)

#### [2019-11-04]

- 🤑 Referral Program: Now both users will get __$50 credits__!
- 📊 Charts: Fix UTC on daily and monthly chart views
- 👷‍ HTML: Change `referrer` meta-tag value to `same-origin`, *was `origin`*
- ✉️ Notifications: Minor update to email template

#### [2019-10-29]

- 🔥 Pre-rendering: Support for __styled-components__
- 📊 Charts: Fix displayed date/time in some timezones
- 📊 Charts: Add option to display date/time in *Local* and/or *UTC* timezones
- 👨‍💻 User Account: Easily subscribe/unsubscribe from our newsletter in [account settings](https://ostr.io/account)
- ✉️ Notifications: Better emails delivery with prioritization for *premium* billing plans and *urgent* notifications

#### [2019-10-06]

- Automated and simplified the [right to be forgotten](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/account-removal.md) following our GDPR compliance
- Overall fixes to our mailing service, splitting "urgent" and "regular" email for better user experience
- All forms: Better UI/UX implementation

#### [2019-10-03]

- Analytics — released [`ostrio-analytics@1.2.0`](https://github.com/VeliovGroup/ostrio-analytics/releases/tag/1.2.0) — Improving global JavaScript runtime errors report
- Analytics — Fix "development" mode and overall codebase enhancements

#### [2019-08-18]

- Regular maintenance release
- Overall infrastructure software upgrade
- Internal packages and dependencies upgrade
- Prerendering: Fix saving and pre-filling "path" and "scan pages limit" in "Pre-render the website" pop-up

#### [2019-07-13]

- Notification Triggers: More verbose UX interactions with UI
- Prerendering > Pre-render a website: Scan up to `500` pages in a single run! *Was: 100*
- Prerendering > Pre-render a website form: Remember latest `path` and `links limit` fields
- Emails: Prioritize critical emails
- Better Sign-up flow

#### [2019-06-19]

- Minor codebase fixes related to charts
- Minor CSS fixes advised by Google

#### [2019-06-15]

- Fix "glasses" icon in template footer
- Add "related" domain names to sitemap
- Add double-checks for domain verifications
- Add double-checks for failed health checks
- Extend server verification period to 6 days (144 hours)
- Overall service speed and performance enhancements

#### [2019-05-20]

- Minor UI/UX fixes and enhancements, mostly related to fonts
- Micro-data fixes for better SEO (*mostly FAQ section*)

#### [2019-05-11]

- Now pre-rendering cache TTL has step of `0.1` hours
- Better UI on large screens
- Better UI/UX in some part of application (re-pre-rendering)
- General codebase enhancements
- Now user have 96 hours to confirm a server (*was: 48 hours*)
- Fix an issue with Pricing page on Safari (*page was getting reloaded, until it crashed*)
- Fix an issue when some of the users wasn't getting emails (*on private mail-servers*)
- Fix an issue when some of the users wasn't able to confirm the server ownership

#### [2019-04-27]

- Fix date (time AP/PM) on real-time charts
- Allow shorter pre-rendering cache TTL on "business" (no cache) and pro (2 hours) plans, on "hobby" plan (4 hours) will remain to be the shortest possible cache record TTL
- Framework, packages and dependencies upgrade
- Fix *ServiceWorker* on some mobile devices
- No more CAPTCHA on user sign up
- Fix domain/server ownership confirmation to pass WAP security settings

#### [2019-02-19]

- New splash-screen
- Better pre-rendering timings
- New images on promo pages
- New main social image
- New favicons & pin-icon
- Better "native" behavior as PWA (remember last opened route; remember last opened modal; larger bottom buttons; and many other UI/UX enhancements)
- No more Google products, switch reCAPTCHA to [hCAPTCHA](https://hCaptcha.com/?r=dbcc2f68f654)
- Fix and enhance web-analytics module
- Fix charts — missing last month/day
- Fix charts — iOS & MacOS Safari
- Fix switching High Contrast Mode (HCM) back and forth
- Improve CSS painting on Mobile & PWA
- Better ServiceWorker and offline capabilities support
- <kbd>copy</kbd> button for quick copy/paste operation (Mobile and Desktop support)
- Minor update to pricing page
- "business" plan now has option to get monthly invoices and special offers. Interested? Email/text to us using links at the bottom of any page

#### [2018-12-09]

- Better emails for monitoring alerts
- Better pricing page
- Minor UI enhancements
- Fix timestamps (dates) in notifications and notification center

#### [2018-11-24 - 2018-12-02]

- Add sitemap [to GitHub](https://github.com/VeliovGroup/ostrio/blob/master/SITEMAP.md) and [website](https://ostr.io/info/sitemap)
- Add support for sitemap.xml in prerender panel. Now you can scan your `/sitemap.xml` to render and cache all pages of your website
- Various minor UI enhancements

#### [2018-11-15 - 2018-11-23]

This is a very unusual release for our team, new features were delivered over the week by small portions. Our server infrastructure got smoothly upgraded throughout the week too.

We're listening you carefully, thank you all for contributions, suggestions, and offers. Using your feedback we're releasing one of the major releases focused on mobile experience (Mobile UX) and on more verbose communication with users. This release brings mid-level redesign, - we've re-factored all colors, buttons, forms, and other elements. You gonna ♥ it.

- 📈 All charts has now 2 preview modes, "table" and "dashboard"
- 📈 Analytics - Add biweekly stats to preview table, verbose metrics data
- 👨‍🎨 All tables now has straightforward design with favicon preview
- 👨‍🎨 Re-factored pagination element
- 👨‍🎨 New alternative "table" charts look, see `table`|`dashboard` toggle.
- 👨‍🎨 Yellow focus on active/important elements
- 👨‍🎨 Overall design revision
- 🏗 Make notifications are more readable and informative (*wip*)
- 😎 Much-much better high-visibility/contrast mode, which now can be comfortably used as "dark" mode
- 🕸 Prerendering - Fix for pages with `iframe[src="about:blank"]`
- 🕸 Prerendering - Fix issue with slow pagination in "active cache" browser
- 📜 FAQ - New FAQ section on main page
- 👷‍♂️ PWA - "Add to homescreen" for supported browsers
- 👷‍ Fixed all known issues
- 👷‍ Overall codebase enhancements
- 👷‍ Bind search field focus to <kbd>ctrl</kbd>+<kbd>f</kbd> keys combination
- 👷‍ Bind pagination to <kbd>←</kbd> and <kbd>→</kbd> keys
- ⚠️ New feature: wildcard domains support for "business" and "pro" plans (*available only for Analytics and Pre-rendering*)

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
