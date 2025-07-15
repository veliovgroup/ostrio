# Open Graph basics

## About:

__TL;TR;__ Adding Open Graph tags (*a.k.a. meta `og:` tags*) to your website will make it appear more user-friendly in social networks feed, and as a consequence - will cause more click and traffic.

__Description by [Redclay Interactive](https://www.redclayinteractive.com/what-are-open-graph-tags/):__
> The open graph protocol allows developers to leverage Facebook in new and exciting ways. One of the easiest ways to venture into the world of Open Graph is to add the open graph meta tags to your site. Open graph meta tags allow you to control what content shows up when a page is shared on Facebook.

## Basic structure:

This example is very basic usage, but will cover most of the cases. For more info and examples - *see links below*.

```html
<html prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
  <head>
    <!-- standard meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Traveler: Norway</title>

    <!-- common meta tags -->
    <meta name="description" content="Awesome articles about travel in Norway">
    <meta name="image" content="https://example.com/social-1280x640.png">
    <meta name="keywords" content="awesome, travel, article, Norway, blog">
    <meta name="name" content="Traveler">
    <meta name="url" content="https://example.com/articles/norway">

    <!-- common linked content -->
    <link rel="image" href="https://example.com/social-1280x640.png">
    <link rel="canonical" href="https://example.com/articles/norway">

    <!-- open graph tags -->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Traveler">
    <meta property="og:description" content="Awesome articles about travel in Norway">
    <meta property="og:image" content="https://example.com/social-1280x640.png">
    <meta property="og:image:width" content="1280">
    <meta property="og:image:height" content="640">
    <meta property="og:locale" content="en_US">
    <meta property="og:title" content="Traveler: Norway">
    <meta property="og:url" content="https://example.com/articles/norway">
    <!-- Optionally link/associate website with Facebook App -->
    <meta property="fb:app_id" content="0000000000000000">
    <!-- Optionally link/associate website with Facebook Page -->
    <meta property="fb:pages" content="000000000000000">
  </head>
  <body>
    <!-- Content -->
  </body>
</html>
```

## Further reading:

- [Open Graph Protocol specs](http://ogp.me/)
- [Documentation by Facebook](https://developers.facebook.com/docs/sharing/webmasters)
- [Test your markup](https://developers.facebook.com/tools/debug/sharing/)
