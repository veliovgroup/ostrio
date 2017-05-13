Website / Twitter Card basics
======

### About:
__TL;TR;__
Adding Twitter Card tags (*a.k.a. meta `twitter:` tags*) to your website will make it appear more user-friendly and eye-catching in Twitter feed, and as a consequence - will cause more click and traffic.

With Twitter Card you can add specific image, title and text to each Twitted link. Twitter supports 4 types of cards: "[Summary](https://dev.twitter.com/cards/types/summary)", "[Summary with large image](https://dev.twitter.com/cards/types/summary-large-image)", "[Mobile Application](https://dev.twitter.com/cards/types/app)" and "[Audio/Video/Media Player](https://dev.twitter.com/cards/types/player)". In this article we will cover most used card - "Summary with large image".

### Basic structure:
This example is very basic usage, but will cover most of the cases. For more info and examples - *see links below*.

```html
<html>
  <head>
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@BUSINESS_TWITTER_ACCOUNT">
    <meta name="twitter:creator" content="@PERSONAL_TWITTER_ACCOUNT">
    <meta name="twitter:title" content="My Awesome Website">
    <meta name="twitter:description" content="Awesome articles about travell">
    <meta name="twitter:image" content="https://example.com/share.png">
    <title>My Awesome Website</title>
  </head>
  <body>
   <!-- Content -->
  </body>
</html>
```

### Further reading:
 - [Documentation by Twitter](https://dev.twitter.com/cards/overview)
 - [Test your Twitter Card (validator)](https://cards-dev.twitter.com/validator)
