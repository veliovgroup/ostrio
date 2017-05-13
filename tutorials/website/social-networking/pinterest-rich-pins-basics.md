Website / Pinterest Rich Pins basics
======

### About:
__Description by Pinterest:__
> Rich Pins show metadata right on the Pin itself, giving Pinners a richer experience and increasing engagement. Information in a Rich Pin is independent of the Pin description, ensuring that important information is always tied to the Pin. There are 4 types of Rich Pins: app, article, product and recipe Pins.
> 
> Rich Pins work by displaying metadata from marked up pages on your website. Once you've applied for Rich Pins, any content on your site with metadata will turn into a Rich Pin when a user saves it.

Needs to be mentioned: ["Structured Data"](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/website/social-networking/structured-data-basics.md) and [Open Graph](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/website/social-networking/open-graph-basics.md) is supported by Pinterest too, basically Pinterest Rich Pins is based on combination of Open Graph and "Structured Data" with some extra tags extension `article:`.

### Basic structure:
This example is very basic usage, but will cover most of the cases. For more info and examples - *see links below*.

```html
<html>
  <head>
    <meta property="og:type" content="article">
    <meta property="og:title" content="My Awesome Website">
    <meta property="og:description" content="Awesome articles about travel">
    <meta property="og:url" content="https://example.com">
    <meta property="og:site_name" content="Travel and Blogs">
    <meta property="article:published_time" content="2017-10-12T00:00:00+00:00">
    <meta property="article:author" content="YOUR_NAME">
    <meta itemprop="image" content="https://example.com/share.png">
    <title>My Awesome Website</title>
  </head>
  <body>
  </body>
</html>
```

### Further reading:
 - [Instructions by Pinterest](https://help.pinterest.com/en/articles/enable-rich-pins-your-site)
 - [Docs by Pinterest](https://developers.pinterest.com/docs/rich-pins/articles/?)
 - [Specs by Pinterest](https://developers.pinterest.com/docs/rich-pins/reference/)
