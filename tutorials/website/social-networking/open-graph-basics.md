Open Graph basics
======

### About:
__TL;TR;__
Adding Open Graph tags (*a.k.a. meta `og:` tags*) to your website will make it appear more user-friendly in social networks feed, and as a consequence - will cause more click and traffic.

__Description by [Redclay Interactive](https://www.redclayinteractive.com/what-are-open-graph-tags/):__
> The open graph protocol allows developers to leverage Facebook in new and exciting ways. One of the easiest ways to venture into the world of Open Graph is to add the open graph meta tags to your site. Open graph meta tags allow you to control what content shows up when a page is shared on Facebook.

### Basic structure:
This example is very basic usage, but will cover most of the cases. For more info and examples - *see links below*.

```html
<html prefix="og: http://ogp.me/ns#">
  <head>
    <meta property="fb:app_id" content="__FACEBOOK_APP_ID__">
    <meta property="og:url" content="http://example.com">
    <meta property="og:type" content="website">
    <meta property="og:locale" content="en_US">
    <meta property="og:site_name" content="Travel and Blogs">
    <meta property="og:title" content="My Awesome Website">
    <meta property="og:description" content="Awesome articles about travel">
    <meta property="og:image" content="http://example.com/share.png">
    <!-- Use "og:image:secure_url" only if website has both http and httpS versions -->
    <meta property="og:image:secure_url" content="https://example.com/share.png">
    <meta property="og:image:type" content="image/png" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="640" />
    <title>My Awesome Website</title>
  </head>
  <body>
   <!-- Content -->
  </body>
</html>
```

### Further reading:
 - [Open Graph Protocol specs](http://ogp.me/)
 - [Documentation by Facebook](https://developers.facebook.com/docs/sharing/webmasters)
 - [Test your markup](https://developers.facebook.com/tools/debug/sharing/)
