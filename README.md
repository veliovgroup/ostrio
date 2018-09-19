# [ostr.io](https://ostr.io)

One service for all modern web applications needs - [Prerendering](https://ostr.io/info/prerendering), [Monitoring](https://ostr.io/info/monitoring), [Domain Name Protection](https://ostr.io/info/domain-names-protection), [Web-Analytics](https://ostr.io/info/web-analytics), [Web-CRON](https://ostr.io/info/web-cron).

## ToC

- [ostr.io documentation](https://github.com/VeliovGroup/ostrio#ostrio-documentation):
  - [Account Basics](https://github.com/VeliovGroup/ostrio#account-basics)
  - [General User Support](https://github.com/VeliovGroup/ostrio#general-user-support)
  - [__Prerendering__](https://github.com/VeliovGroup/ostrio#prerendering-spiderable--crawlable)
  - [__Monitoring__](https://github.com/VeliovGroup/ostrio#monitoring)
  - [__Analytics__](https://github.com/VeliovGroup/ostrio#analytics)
  - [__Domains Protection__](https://github.com/VeliovGroup/ostrio#domains-protection)
  - [__Web-CRON__](https://github.com/VeliovGroup/ostrio#web-cron)
  - [Referral Program](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/referral-program.md)
- [Tutorials](https://github.com/VeliovGroup/ostrio#tutorials):
  - [MongoDB](https://github.com/VeliovGroup/ostrio#mongodb-tutorials)
  - [SSL/TLS certificates](https://github.com/VeliovGroup/ostrio#ssltls-certificates-tutorials)
  - [Web Development](https://github.com/VeliovGroup/ostrio#web-development-tutorials)
  - [Linux](https://github.com/VeliovGroup/ostrio#linux-tutorials)
- Get in touch:
  - <a href="mailto:info@ostr.io" target="_parent">Send us a message</a>
  - Follow us on [Twitter](https://twitter.com/ostrio_service)
  - Like and subscribe at [Facebook](https://www.facebook.com/ostrio.service)
  - Follow at [Google+](https://plus.google.com/+OstrIo)
- [CHANGELOG](https://github.com/VeliovGroup/ostrio/blob/master/HISTORY.md) - Dev blog

## ostr.io documentation

### Account Basics

- [Registration](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/sign-up.md)
- [Password Recovery](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/password-recovery.md)
- [Password Change](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/password-change.md)
- [Change login (primary email)](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/change-primary-email.md)
- [Add extra email(s) for notifications](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/add-notification-email.md)
- [Add phone number(s) for SMS notifications](https://github.com/VeliovGroup/ostrio/blob/master/docs/account/add-notification-phone-number.md)

### General User Support

- [Fill an issue](https://github.com/VeliovGroup/ostrio/issues) - Quickly solve your issue with the power of our customer support and open source community
- __Pro__ Plan Support - Contact us directly via email
- __Business__ Plan Support - Contact us directly via email or messenger of your choice

<!-- ### Resources Management
 - Server: [Add and verify by IP]()
 - Server: [Add and verify by domain name]()
 - Domain: [Whois integrity monitoring]()
 - Domain: [DNS records integrity monitoring]()
 - Website: [SSL certificate integrity monitoring]() -->

### Prerendering (Spiderable / Crawlable)

- __About__: Modern front-end JavaScript solutions don't render pages on a server side, instead, the server returns same HTML markup to all requests, while a page is rendered in a browser. This technology leads to many benefits - faster page load, lower bandwidth usage, great user experience with fast and responsive UI. On the other hand web crawlers and search engines, like Google, Bing, Yandex, Facebook, Slack, Skype etc. doesn't execute JavaScript and fetch an empty page without content. Prerendering will serve content properly to every request by a web crawler, social network, messaging app and search engine, which is so important for SEO and social sharing.
- [`spiderable-middleware` open source repository](https://github.com/VeliovGroup/spiderable-middleware)
- [NPM `spiderable-middleware` package](https://www.npmjs.com/package/spiderable-middleware)
- [Atmosphere `ostrio:spiderable-middleware` package](https://atmospherejs.com/ostrio/spiderable-middleware)
- [Learn more about Prerendering](https://ostr.io/info/prerendering)
- [Accelerated Mobile Pages (AMP) Integration](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/amp-support.md)
- [Node.js Integration via NPM](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/node-npm.md)
- [Meteor.js Integration via Atmosphere](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/meteor-atmosphere.md)
- [Nginx Integration](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md)
- [Return genuine status code](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/genuine-status-code.md)
- [Client Optimization](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/optimization.md)
- [Server Optimization](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/rendering-endpoints.md)
- [Caching](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/cache.md)
- [Cache purge](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/cache-purge.md)
- [ES6 / ECMAScript 2015 Support](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/es6-support.md)
- [Strip JavaScript](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/strip-javascript.md)
- [Detect Prerendering engine requests during runtime](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/detect-prerendering.md)
- [Detect Prerendering engine requests during runtime (*Meteor specific*)](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/detect-prerendering-meteor.md)
- [Rendering Endpoints](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/rendering-endpoints.md)

### Monitoring

- __About__: Nowadays website downtime may cause profit loss for any online business, and nearly every business is presented online. It's very important to take an action as soon as possible in event of server, hardware or software failure. We offer proactive monitoring with alerts about occurred issues and issues prediction which may lead to failures in the future.
- [Learn more about Monitoring](https://ostr.io/info/monitoring)
- [Basic HTTP(S) Monitoring](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/basics.md)
- [Build "uncacheable" path to endpoint, prevent cached results](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/custom-path.md)
- [HTTP(S) Monitoring with web-authentication](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/with-auth.md)
- [Nginx stats and usage Monitoring](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/nginx-stats.md)
- Advanced: [SNMP (CPU, RAM, HDD, SSD, Bandwidth, Processes, SSH Sessions, Server Reboot) monitoring](https://github.com/VeliovGroup/ostrio/blob/master/docs/monitoring/snmp.md)

### Analytics

- __About__: Our solution is made to be Open Source and transparent in a soul, lightweight, efficient and with respect to DNT policy. No heavy tasks, no mouse tracking, no DOM changes, no UI freezes, no negative UX impact. All data is available instantly in real-time.
- [`ostrio-analytics` open source repository](https://github.com/VeliovGroup/ostrio-analytics)
- [NPM `ostrio-analytics` package](https://www.npmjs.com/package/ostrio-analytics)
- [Atmosphere `ostrio:analytics` package](https://atmospherejs.com/ostrio/analytics)
- [Detect AdBlock usage](https://github.com/VeliovGroup/ostrio/blob/master/docs/analytics/detect-adblock.md)
- [Track Accelerated Mobile Pages (AMP)](https://github.com/VeliovGroup/ostrio/blob/master/docs/analytics/track-amp.md)
- [Learn more about Web-Analytics](https://ostr.io/info/web-analytics)
- [Read Open Source Library Docs](https://github.com/VeliovGroup/ostrio-analytics)

### Domains Protection

- __About__: Be aware of data substitution, traffic redirection, theft, and hijacking of a domain name, DNS, Whois and SSL/TLS certificate. Nowadays protection and security are number one priority for IT industry. Whenever you are involved in IT as a hobbyist or as a business of any size, your data and data of your visitors must be well protected. __And we made it easy__, no setup is required our famous "*One Click Setup*" will configure everything for you in a matter of seconds.
- [Learn more about __free__ Domains Protection](https://ostr.io/info/domain-names-protection)

### Web-CRON

- __About__: Sometimes webmasters need to schedule CRON jobs, but unable due to a current hosting provider. With our service, CRON tasks can be set in the same way as you used to with classic Linux CRON scheduler. But it is more than running tasks, we will send an alert if a task is failed to run, and our robot will retry to run a task in the case if your server is temporary down.
- [Learn more about Web-CRON](https://ostr.io/info/web-cron)

<!--  - Custom: [JSON Endpoint Monitoring]()
 - Custom: [XML Endpoint Monitoring]() -->

<!--  - [Phusion Passenger `passenger-status` Monitoring]()
 - [PHP stats and usage Monitoring]()
 - [Node.js stats and usage Monitoring]()
 - [MongoDB stats and usage Monitoring]()
 - PHP: [MySQL Database Monitoring]()
 - Ruby: [MySQL Database Monitoring]()
 - Node.js: [MySQL Database Monitoring]()
 - PHP: [MongoDB Database Monitoring]()
 - Ruby: [MongoDB Database Monitoring]()
 - Node.js: [MongoDB Database Monitoring]()
 - PHP: [Redis Database Monitoring]()
 - Ruby: [Redis Database Monitoring]()
 - Node.js: [Redis Database Monitoring]()
 - Custom: [Server stats Monitoring with Node.js]()
 - Custom: [Server stats Monitoring with Ruby]()
 - Custom: [Server stats Monitoring with PHP]() -->

<!-- ### Web-CRON
 - [Introduction]()
 - [Integration examples]() -->

## Tutorials

- __MongoDB Tutorials__
  - Security:
    - [Use SSL certificates](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/mongodb/use-ssl-http-encryption.md)
  - Performance & Maintenance:
    - [Create Single Server ReplicaSet](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/mongodb/single-server-replica-set.md)
    - [Create Multiple (Custer) Server ReplicaSet](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/mongodb/multiple-server-replica-set.md)
    - [Use OpLog](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/mongodb/enable-oplog.md)
- __SSL/TLS certificates Tutorials__
  - [Free letsencrypt certificates](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/ssl/ssl-letsencrypt.md)
  - [Verify letsencrypt certificate via DNS](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/ssl/ssl-letsencrypt-dns-validation.md)
- __Web Development Tutorials__
  - Social Networks Integration:
    - [Open Graph basics](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/website/social-networking/open-graph-basics.md) - For Facebook and other platforms with Open Graph support
    - [Pinterest Rich Pins basics](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/website/social-networking/pinterest-rich-pins-basics.md)
    - [Structured Data basics](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/website/social-networking/structured-data-basics.md) - Schema.org for Google rich snippets
    - [Twitter Card basics](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/website/social-networking/twitter-cards-basics.md) - Nice shared URLs with image, title and text preview
- __Linux Tutorials__
  - [Change timezone](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/change-timezone.md)
  - [`.bash_profile` tuning](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/bash_profile-tuning.md)
  - Users:
    - [Change root password](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/root-passwd.md)
    - [Change user password](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/user-passwd.md)
    - [Create new system user](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/create-user.md)
    - [rbash - restricted users](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/rbash.md)
  - Security:
    - [Change Default SSH port](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/change-ssh-port.md)
    - [Disable SSH login as root](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/disable-ssh-root.md)
    - [Disable SSH login with password (passwordless authentication), use SSH Keys](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/use-ssh-keys.md)
    - [Use RKHunter (Rootkit Hunter) to scan OS for vulnerabilities](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/rootkit-hunter.md)
    - [Use Lynis for security audit](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/lynis-security-audit.md)
    - [Basic firewall with `iptables`](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/iptables-firewall.md)
    - [Basic ipv6 firewall with `ip6tables`](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/iptables-firewall-ipv6.md)
    - [Scheduled and Automated Backups](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/automated-backups.md)

<!-- ### nginx
 - [nginx + Node.js with WebSockets]() - Meteor.js, MEAN.js or any other Node.js project with WebSockets
 - [Load monitoring]()
 - [Set up support for h2]()
 - [Basic proxy configuration]()
 - [Proxy injections]()
 - [gzip compressions]()
 - [Optimization]()
 - [Fine tuning]()
 - [Create login/password protected path]()
 - [Security & Protection]()
 - [Enable WebSockets Support]() -->
<!--  - [Run MongoDB locally, prevent external access]()
 - [Change default ports]() -->
 <!-- - [Protect database with password]() -->

<!-- #### Other MongoDB Tips & Tricks
 - [Self-destroying records, TTL]() -->

<!--  - [Install SSL/TLS certificate to Nginx]() -->

<!-- #### Security
 - [Basic Security Check-list]()
 - [Google reCAPTCA]()
 - [Advanced Google reCAPTCHA integration]() -->

<!-- #### Visitors Analytics
 - [ostr.io Analytics]()
 - [Google Analytics]()
 - [Yandex Metrika]() -->

<!-- #### Development
 - [Service Workers - Build off-line website]()
 - [Service Workers - App install banner]()
 - [Service Workers - Standalone App]()
 - [favicon - for all devices and browsers]()
 - [robots.txt]() -->

<!-- #### Meteor.js
 - [Build simple off-line application]() -->

<!-- #### Meteor.js Security
 - [DDP Rate limiting]()
 - [reCAPTCHA]() -->

<!-- ### CDN
 - [CloudFlare]()
 - [Advanced security with CloudFlare]() -->
