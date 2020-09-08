# Twitter Card basics

## About:

__TL;TR;__ Adding Twitter Card tags (*a.k.a. meta `twitter:` tags*) to your website will make it appear more user-friendly and eye-catching in Twitter feed, and as a consequence - will cause more click and traffic.

With Twitter Card you can add specific image, title and text to each Twitted link. Twitter supports 4 types of cards: "[Summary](https://dev.twitter.com/cards/types/summary)", "[Summary with large image](https://dev.twitter.com/cards/types/summary-large-image)", "[Mobile Application](https://dev.twitter.com/cards/types/app)" and "[Audio/Video/Media Player](https://dev.twitter.com/cards/types/player)". In this article we will cover most used card - "Summary with large image".

## Basic structure:

This example is very basic usage, but will cover most of the cases. For more info and examples - *see links below*.

```html
<html>
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

    <!-- twitter tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:creator" content="@my_personal_account">
    <meta name="twitter:site" content="@business_account">
    <meta name="twitter:title" content="Traveler: Norway">
    <meta name="twitter:description" content="Awesome articles about travel in Norway">
    <meta name="twitter:image" content="https://example.com/social-1280x640.png">
    <meta name="twitter:url" content="https://example.com/articles/norway">
  </head>
  <body>
    <!-- Content -->
  </body>
</html>
```

## Further reading:

- [Documentation by Twitter](https://dev.twitter.com/cards/overview)
- [Test your Twitter Card (validator)](https://cards-dev.twitter.com/validator)
