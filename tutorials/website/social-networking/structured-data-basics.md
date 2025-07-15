# Structured data basics

## About:

__TL;TR;__ Adding structured data (*a.k.a. "special" tags and attributes*) to your website will make it appear more user-friendly in search results, and as a consequence - will cause more click and traffic.

__Description by Google:__
> The structured data markup you provide for your pages helps Google algorithms better understand the kinds of things you offer your users so that their attributes can be featured in a visually compelling way—from ratings for recipe content, to structured layouts for events, to carousels for a related collection of items such as recipes from a specific host. These experiences are also streamlined for the user’s device and context, enhancing your content previews and making it easier for users to take action on your content wherever they are.

## Basic structure:

Code-sample below is showcasing the most used case - *Website + Article*. There are many more types to use, like - reviews, video, audio, software, applications, recipes, movies, albums, etc. (*see links at the end of the article*).

```html
<html itemscope itemtype="http://schema.org/WebPage">
  <head>
    <!-- standard meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Traveler: Norway</title>

    <!-- common linked content -->
    <link rel="image" href="https://example.com/social-1280x640.png">
    <link rel="canonical" href="https://example.com/articles/norway">

    <!-- structured meta tags -->
    <meta name="description" itemprop="description" content="Awesome articles about travel in Norway">
    <meta name="image" itemprop="image" content="https://example.com/social-1280x640.png">
    <meta name="keywords" itemprop="keywords" content="awesome, travel, article, Norway, blog">
    <meta name="name" itemprop="name" content="Traveler">
    <meta name="url" itemprop="url" content="https://example.com/articles/norway">

    <!-- structured data -->
    <script type="application/ld+json">
      {
        "@context": "https://schema.org",
        "@type": "Article",
        "mainEntityOfPage": "https://example.com/articles/norway",
        "name": "Traveler: Norway",
        "headline": "Articles about travel in Norway",
        "alternativeHeadline": "Traveling in Norway",
        "description": "Hand-picked collection of quality articles about travel in Norway",
        "image":[
          "https://example.com/social-1280x640.png"
        ],
        "datePublished": "2020-03-22T08:00:00+00:00",
        "dateModified": "2020-04-25T20:00:00+00:00",
        "genre": "Blog",
        "keywords": "awesome, travel, article, Norway, blog",
        "author": {
          "@type": "Organization",
          "name": "example.com, Inc.",
          "logo": {
            "@type": "ImageObject",
            "url":"https://example.com/logo-600x60.png"
            }
          }
        },
        "publisher": {
          "@type": "Organization",
          "name": "example.com, Inc.",
          "logo":{
            "@type": "ImageObject",
            "url": "https://example.com/logo-600x60.png"
            }
          }
        }
      }
    </script>
  </head>
  <body>
    <!-- Article -->
    <article id="about" itemscope itemtype="http://schema.org/Article">

      <!-- Main picture and thumb -->
      <picture itemprop="image" itemscope itemtype="http://schema.org/ImageObject">
        <meta itemprop="caption" content="Travel to Norway">
        <meta itemprop="exifData" content="image/png">
        <link itemprop="contentUrl" href="https://example.com/images/norway.png" content="https://example.com/images/norway.png">
        <link itemprop="url" href="https://example.com/articles/norway#about" content="https://example.com/articles/norway#about">
        <meta itemprop="width" content="1200 px">
        <meta itemprop="height" content="650 px">
      </picture>
      <link itemprop="thumbnailUrl" href="https://example.com/images/norway-sm.png" content="https://example.com/images/norway-sm.png">

      <!-- Proper Linking -->
      <meta itemprop="url" content="https://example.com/articles/norway">
      <meta itemscope itemprop="mainEntityOfPage" itemtype="https://schema.org/WebPage" itemid="https://example.com/articles/norway#about">

      <!-- Author -->
      <div itemprop="author" itemscope itemtype="https://schema.org/Person">
        <meta itemprop="name" content="John Smith">
      </div>

      <!-- Organization / Publisher -->
      <div itemprop="publisher" itemscope itemtype="https://schema.org/Organization">
        <meta itemprop="name" content="Your Company/Project Name">
        <picture itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
          <meta itemprop="caption" content="Travel and Blogs">
          <meta itemprop="exifData" content="image/png">
          <meta itemprop="contentUrl" content="https://example-travel-co.com/images/logo-1280x640.png">
          <meta itemprop="url" content="https://example-travel-co.com">
          <meta itemprop="width" content="1280 px">
          <meta itemprop="height" content="640 px">
        </picture>
      </div>

      <!-- Date/Time -->
      <time itemprop="datePublished" datetime="2020-03-22T08:00:00+00:00">March, 22nd 2020</time>
      <time itemprop="dateModified" datetime="2020-04-25T20:00:00+00:00">April, 25 2020</time>

      <!-- Finally, Content itself: -->
      <h2 itemprop="name">
        101 Trip to Norway
      </h2>
      <h3 itemprop="headline">
        Planning trip to Norway - here's bucket-list for thing to do during your trip.
      </h3>
      <div itemprop="description">Tips and hints for travelers to Norway</div>
      <div itemprop="articleBody">
        The little village of Flåm offers a tranquil spot of natural beauty all year. It is located at the far end of the majestic Aurlandsfjord, with the stunning valley Flåmsdalen taking you up to the mountain areas of Myrdal. It is perfect for great outdoor experiences all year around..... See - https://www.visitnorway.com/flam/
      </div>
    </article>
  </body>
</html>
```

## Further reading:

- [Test your markup with testing-tool by Google](https://search.google.com/structured-data/testing-tool)
- [Structured Data guidelines by Google](https://developers.google.com/search/docs/guides/search-features)
- [Structured Data specs at schema.org](https://schema.org/)
