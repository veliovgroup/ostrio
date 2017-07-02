Nginx Integration
======

 - Learn more - [what is Prerendering and why you need it](https://ostr.io/info/prerendering)
 - For more detailed info, examples and API see [`spiderable-middleware` package repository](https://github.com/VeliovGroup/spiderable-middleware).

### ToC:
 - [Installation](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md#installation)
 - [Update HTML Markup](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md#update-html-markup)
 - [Nginx integration](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md#nginx-integration-1)
 - [Nginx: Simple proxy pass](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md#simple-proxy-pass)
 - [Nginx: Phusion Passenger + Nginx + Prerendering integration](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md#phusion-passenger--nginx--prerendering-integration)
 - [Nginx: Advanced: WebSockets, socket.io, socketjs](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md#advanced-websockets-socketio-socketjs)
 - [Nginx: Advanced: Prerendering on Load Balancer](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/nginx.md#advanced-prerendering-on-load-balancer)

### Installation
All you need is installed Nginx in latest stable release.

### Update HTML Markup
To cause special behavior of web crawlers on JavaScript powered websites use `fragment` meta tag. Although it's officially deprecated by Google search engine, it's may be used by other search engines and web crawlers. [Learn more](https://developers.google.com/webmasters/ajax-crawling/docs/specification):
```html
<html>
  <head>
    <meta name="fragment" content="!">
    <!-- ... -->
  </head>
  <body>
    <!-- ... -->
  </body>
</html>
```

### Nginx integration
#### Simple proxy pass
```nginx
server {
  listen 80;
  listen [::]:80;
  server_name example.com;
  root /path/to/public;

  location / {
    # Try static files, if request is not for
    # the static file - proxy pass to Prerendering
    try_files $uri @crawlable;
  }

  location @crawlable {
    set $crawlable 0;
    set $fragment  '';
    set $orig_uri  $request_uri;

    # Avoid dead loop and drop get query
    if ($orig_uri ~ "^(.*)\?(.*)$") {
      set $orig_uri $1;
    }

    # Feel free to edit bots User Agent regular expression
    # to meet your needs we have included most of the bots
    # which have been active around Internet at least last 5 years
    if ($http_user_agent ~* "\.net crawler|360spider|50\.nu|8bo crawler bot|aboundex|accoona|adldxbot|adsbot-google|ahrefsbot|altavista|appengine-google|applebot|archiver|arielisbot|ask jeeves|auskunftbot|baidumobaider|baiduspider|becomebot|bingbot|bingpreview|bitbot|bitlybot|blitzbot|blogbridge|boardreader|botseer|catchbot|catchpoint bot|charlotte|checklinks|cliqzbot|clumboot|coccocbot|converacrawler|crawl-e|crawlconvera|dataparksearch|daum|deusu|developers\.google\.com/+/web/snippet|discordbot|dotbot|duckduckbot|elefent|embedly|evernote|exabot|facebookbot|facebookexternalhit|fatbot|fdse robot|feed seeker bot|feedfetcher|femtosearchbot|findlinks|flamingo_searchengine|flipboard|followsite bot|furlbot|fyberspider|gaisbot|galaxybot|geniebot|genieo|gigablast|gigabot|girafabot|gomezagent|gonzo1|google sketchup|google-structured-data-testing-tool|googlebot|haosouspider|heritrix|holmes|hoowwwer|htdig|ia_archiver|idbot|infuzapp|innovazion crawler|instagram|internetarchive|iqdb|iskanie|istellabot|izsearch\.com|kaloogabot|kaz\.kz_bot|kd bot|konqueror|kraken|kurzor|larbin|leia|lesnikbot|linguee bot|linkaider|linkapediabot|linkedinbot|lite bot|llaut|lookseek|lycos|mail\.ru_bot|masidani_bot|masscan|mediapartners-google|metajobbot|mj12bot|mnogosearch|mogimogi|mojeekbot|motominerbot|mozdex|msiecrawler|msnbot|msrbot|netpursual|netresearch|netvibes|newsgator|ng-search|nicebot|nutchcvs|nuzzel|nymesis|objectssearch|odklbot|omgili|oovoo|oozbot|openfosbot|orangebot|orbiter|org_bot|outbrain|pagepeeker|pagesinventory|parsijoobot|paxleframework|peeplo screenshot bot|pinterest|plantynet_webrobot|plukkie|pompos|psbot|quora link preview|qwantify|read%20later|reaper|redcarpet|redditbot|retreiver|riddler|rival iq|rogerbot|saucenao|scooter|scrapy|scrubby|searchie|searchsight|seekbot|semanticdiscovery|seznambot|showyoubot|simplepie|simpy|sitelockspider|skypeuripreview|slack-imgproxy|slackbot|slurp|snappy|sogou|solofield|speedy spider|speedyspider|sputnikbot|stackrambler|teeraidbot|teoma|theusefulbot|thumbshots\.ru|thumbshotsbot|tineye|toweya\.com|toweyabot|tumblr|tweetedtimes|tweetmemebot|twitterbot|url2png|vagabondo|vebidoobot|viber|visionutils|vkshare|voilabot|vortex|votay bot|voyager|w3c_validator|wasalive\.bot|web-sniffer|websquash\.com|webthumb|whatsapp|whatweb|wire|wotbox|yacybot|yahoo|yandex|yeti|yisouspider|yodaobot|yooglifetchagent|yoozbot|yottaamonitor|yowedo|zao-crawler|zebot_www\.ze\.bz|zooshot|zyborg") {
      set $crawlable 1;
    }

    # For more info read: https://developers.google.com/webmasters/ajax-crawling/docs/specification
    if ($args ~ _escaped_fragment_) {
      set $crawlable 1;
    }

    # Catch "hashbang" ("Shebang") URI
    if ($args ~ "_escaped_fragment_=(.+)") {
      set $fragment /$1;
    }

    # Do not proxy requests to static files!
    if ($uri ~* "\.(?:3ds|3g2|3gp|3gpp|7z|a|aac|aaf|adp|ai|aif|aiff|alz|ape|apk|appcache|ar|arj|asf|asx|atom|au|avchd|avi|bak|bbaw|bh|bin|bk|bmp|btif|bz2|bzip2|cab|caf|cco|cgm|class|cmx|cpio|cr2|crt|crx|css|csv|cur|dat|deb|der|dex|djvu|dll|dmg|dng|doc|docm|docx|dot|dotm|dra|drc|DS_Store|dsk|dts|dtshd|dvb|dwg|dxf|ear|ecelp4800|ecelp7470|ecelp9600|egg|eol|eot|eps|epub|exe|f4a|f4b|f4p|f4v|fbs|fh|fla|flac|fli|flv|fpx|fst|fvt|g3|geojson|gif|graffle|gz|gzip|h261|h263|h264|hqx|htc|ico|ief|img|ipa|iso|jad|jar|jardiff|jng|jnlp|jpeg|jpg|jpgv|jpm|js|jxr|key|kml|kmz|ktx|less|lha|lvp|lz|lzh|lzma|lzo|m2v|m3u|m4a|m4p|m4v|map|manifest|mar|markdown|md|mdi|mdown|mdwn|mht|mid|midi|mj2|mka|mkd|mkdn|mkdown|mkv|mml|mmr|mng|mobi|mov|movie|mp2|mp3|mp4|mp4a|mpe|mpeg|mpg|mpga|mpv|msi|msm|msp|mxf|mxu|nef|npx|nsv|numbers|o|oex|oga|ogg|ogv|opus|otf|pages|pbm|pcx|pdb|pdf|pea|pem|pgm|pic|pl|pm|png|pnm|pot|potm|potx|ppa|ppam|ppm|pps|ppsm|ppsx|ppt|pptm|pptx|prc|ps|psd|pya|pyc|pyo|pyv|qt|ra|rar|ras|raw|rdf|rgb|rip|rlc|rm|rmf|rmvb|ron|roq|rpm|rss|rtf|run|rz|s3m|s7z|safariextz|scpt|sea|sgi|shar|sil|sit|slk|smv|so|sub|svg|svgz|svi|swf|tar|tbz|tbz2|tcl|tga|tgz|thmx|tif|tiff|tk|tlz|topojson|torrent|ttc|ttf|txt|txz|udf|uvh|uvi|uvm|uvp|uvs|uvu|vcard|vcf|viv|vob|vtt|war|wav|wax|wbmp|wdp|weba|webapp|webm|webmanifest|webp|whl|wim|wm|wma|wml|wmlc|wmv|wmx|woff|woff2|wvx|xbm|xif|xla|xlam|xloc|xls|xlsb|xlsm|xlsx|xlt|xltm|xltx|xm|xmind|xml|xpi|xpm|xsl|xwd|xz|yuv|z|zip|zipx)(?:\?[a-zA-Z0-9\-\.\_\~\:\/\#\[\]\@\!\$\&\'\(\)\*\+\,\;\=]*)?$") {
      set $crawlable 0;
    }

    # Do not proxy requests to static files!
    if ($fragment ~* "\.(?:3ds|3g2|3gp|3gpp|7z|a|aac|aaf|adp|ai|aif|aiff|alz|ape|apk|appcache|ar|arj|asf|asx|atom|au|avchd|avi|bak|bbaw|bh|bin|bk|bmp|btif|bz2|bzip2|cab|caf|cco|cgm|class|cmx|cpio|cr2|crt|crx|css|csv|cur|dat|deb|der|dex|djvu|dll|dmg|dng|doc|docm|docx|dot|dotm|dra|drc|DS_Store|dsk|dts|dtshd|dvb|dwg|dxf|ear|ecelp4800|ecelp7470|ecelp9600|egg|eol|eot|eps|epub|exe|f4a|f4b|f4p|f4v|fbs|fh|fla|flac|fli|flv|fpx|fst|fvt|g3|geojson|gif|graffle|gz|gzip|h261|h263|h264|hqx|htc|ico|ief|img|ipa|iso|jad|jar|jardiff|jng|jnlp|jpeg|jpg|jpgv|jpm|js|jxr|key|kml|kmz|ktx|less|lha|lvp|lz|lzh|lzma|lzo|m2v|m3u|m4a|m4p|m4v|map|manifest|mar|markdown|md|mdi|mdown|mdwn|mht|mid|midi|mj2|mka|mkd|mkdn|mkdown|mkv|mml|mmr|mng|mobi|mov|movie|mp2|mp3|mp4|mp4a|mpe|mpeg|mpg|mpga|mpv|msi|msm|msp|mxf|mxu|nef|npx|nsv|numbers|o|oex|oga|ogg|ogv|opus|otf|pages|pbm|pcx|pdb|pdf|pea|pem|pgm|pic|pl|pm|png|pnm|pot|potm|potx|ppa|ppam|ppm|pps|ppsm|ppsx|ppt|pptm|pptx|prc|ps|psd|pya|pyc|pyo|pyv|qt|ra|rar|ras|raw|rdf|rgb|rip|rlc|rm|rmf|rmvb|ron|roq|rpm|rss|rtf|run|rz|s3m|s7z|safariextz|scpt|sea|sgi|shar|sil|sit|slk|smv|so|sub|svg|svgz|svi|swf|tar|tbz|tbz2|tcl|tga|tgz|thmx|tif|tiff|tk|tlz|topojson|torrent|ttc|ttf|txt|txz|udf|uvh|uvi|uvm|uvp|uvs|uvu|vcard|vcf|viv|vob|vtt|war|wav|wax|wbmp|wdp|weba|webapp|webm|webmanifest|webp|whl|wim|wm|wma|wml|wmlc|wmv|wmx|woff|woff2|wvx|xbm|xif|xla|xlam|xloc|xls|xlsb|xlsm|xlsx|xlt|xltm|xltx|xm|xmind|xml|xpi|xpm|xsl|xwd|xz|yuv|z|zip|zipx)(?:\?[a-zA-Z0-9\-\.\_\~\:\/\#\[\]\@\!\$\&\'\(\)\*\+\,\;\=]*)?$") {
      set $crawlable 0;
    }

    # Disable Prerendering for WebSockets
    # More info: http://nginx.org/en/docs/http/websocket.html
    if ($http_upgrade) {
      set $crawlable 0;
    }
  
    # Minimize amount of forwarded headers
    proxy_pass_request_headers off;

    # !Very important and required:
    proxy_set_header Host $proxy_host;

    proxy_set_header Connection "close"; # Recommended
    proxy_hide_header WWW-Authenticate;

    ########
    # Do not forget to change _YOUR_AUTH_TOKEN_ to token you get from ostr.io
    ########
    proxy_set_header Authorization "Basic _YOUR_AUTH_TOKEN_";
    # Optional headers you may wish to pass to your app:
    # proxy_set_header Cache-Control $http_cache_control;
    # proxy_set_header Accept $http_accept;
    # proxy_set_header Accept-Encoding $http_accept_encoding;

    # Disable keepalive support, it's not needed for Prerendering
    # For more info read: http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_http_version
    proxy_http_version 1.0;

    # You can change resolver to local DNS server
    # Resolver can be moved into `http` block
    # Add ipv6=off if your server has no IPv6 support, ex.: `resolver 8.8.4.4 8.8.8.8 valid=300s ipv6=off;`
    resolver 8.8.4.4 8.8.8.8 valid=300s;
    resolver_timeout 15s;

    if ($crawlable = 1) {
      # Sendfile is useless for proxied requests, disable it
      # For more info read: http://nginx.org/en/docs/http/ngx_http_core_module.html#sendfile
      sendfile off;
      set $crawlable "render.ostr.io";

      # Change $scheme to 'https', for http -> https proxy
      proxy_pass https://$crawlable/?url=$scheme://$host$orig_uri$fragment;
      break;
    }

    if ($crawlable = 0) {
      # Proxy pass request to your application
      # Assuming `app` is an upstream name
      proxy_pass http://app;
    }
  }
}
```

#### Phusion Passenger + Nginx + Prerendering integration
```nginx
server {
  listen 80;
  listen [::]:80;
  server_name example.com;
  root /path/to/public;
  passenger_app_root /path/to/public;

  passenger_enabled on;
  passenger_app_type node;
  passenger_startup_file index.js;

  location / {
    try_files $uri @crawlable;
  }

  location @crawlable {
    set $crawlable 0;
    set $fragment '';
    set $orig_uri  $request_uri;

    if ($orig_uri ~ "^(.*)\?(.*)$") {
      set $orig_uri $1;
    }

    if ($http_user_agent ~* "\.net crawler|360spider|50\.nu|8bo crawler bot|aboundex|accoona|adldxbot|adsbot-google|ahrefsbot|altavista|appengine-google|applebot|archiver|arielisbot|ask jeeves|auskunftbot|baidumobaider|baiduspider|becomebot|bingbot|bingpreview|bitbot|bitlybot|blitzbot|blogbridge|boardreader|botseer|catchbot|catchpoint bot|charlotte|checklinks|cliqzbot|clumboot|coccocbot|converacrawler|crawl-e|crawlconvera|dataparksearch|daum|deusu|developers\.google\.com/+/web/snippet|discordbot|dotbot|duckduckbot|elefent|embedly|evernote|exabot|facebookbot|facebookexternalhit|fatbot|fdse robot|feed seeker bot|feedfetcher|femtosearchbot|findlinks|flamingo_searchengine|flipboard|followsite bot|furlbot|fyberspider|gaisbot|galaxybot|geniebot|genieo|gigablast|gigabot|girafabot|gomezagent|gonzo1|google sketchup|google-structured-data-testing-tool|googlebot|haosouspider|heritrix|holmes|hoowwwer|htdig|ia_archiver|idbot|infuzapp|innovazion crawler|instagram|internetarchive|iqdb|iskanie|istellabot|izsearch\.com|kaloogabot|kaz\.kz_bot|kd bot|konqueror|kraken|kurzor|larbin|leia|lesnikbot|linguee bot|linkaider|linkapediabot|linkedinbot|lite bot|llaut|lookseek|lycos|mail\.ru_bot|masidani_bot|masscan|mediapartners-google|metajobbot|mj12bot|mnogosearch|mogimogi|mojeekbot|motominerbot|mozdex|msiecrawler|msnbot|msrbot|netpursual|netresearch|netvibes|newsgator|ng-search|nicebot|nutchcvs|nuzzel|nymesis|objectssearch|odklbot|omgili|oovoo|oozbot|openfosbot|orangebot|orbiter|org_bot|outbrain|pagepeeker|pagesinventory|parsijoobot|paxleframework|peeplo screenshot bot|pinterest|plantynet_webrobot|plukkie|pompos|psbot|quora link preview|qwantify|read%20later|reaper|redcarpet|redditbot|retreiver|riddler|rival iq|rogerbot|saucenao|scooter|scrapy|scrubby|searchie|searchsight|seekbot|semanticdiscovery|seznambot|showyoubot|simplepie|simpy|sitelockspider|skypeuripreview|slack-imgproxy|slackbot|slurp|snappy|sogou|solofield|speedy spider|speedyspider|sputnikbot|stackrambler|teeraidbot|teoma|theusefulbot|thumbshots\.ru|thumbshotsbot|tineye|toweya\.com|toweyabot|tumblr|tweetedtimes|tweetmemebot|twitterbot|url2png|vagabondo|vebidoobot|viber|visionutils|vkshare|voilabot|vortex|votay bot|voyager|w3c_validator|wasalive\.bot|web-sniffer|websquash\.com|webthumb|whatsapp|whatweb|wire|wotbox|yacybot|yahoo|yandex|yeti|yisouspider|yodaobot|yooglifetchagent|yoozbot|yottaamonitor|yowedo|zao-crawler|zebot_www\.ze\.bz|zooshot|zyborg") {
      set $crawlable 1;
    }

    if ($args ~ _escaped_fragment_) {
      set $crawlable 1;
    }

    if ($args ~ "_escaped_fragment_=(.+)") {
      set $fragment /$1;
    }

    if ($uri ~* "\.(?:3ds|3g2|3gp|3gpp|7z|a|aac|aaf|adp|ai|aif|aiff|alz|ape|apk|appcache|ar|arj|asf|asx|atom|au|avchd|avi|bak|bbaw|bh|bin|bk|bmp|btif|bz2|bzip2|cab|caf|cco|cgm|class|cmx|cpio|cr2|crt|crx|css|csv|cur|dat|deb|der|dex|djvu|dll|dmg|dng|doc|docm|docx|dot|dotm|dra|drc|DS_Store|dsk|dts|dtshd|dvb|dwg|dxf|ear|ecelp4800|ecelp7470|ecelp9600|egg|eol|eot|eps|epub|exe|f4a|f4b|f4p|f4v|fbs|fh|fla|flac|fli|flv|fpx|fst|fvt|g3|geojson|gif|graffle|gz|gzip|h261|h263|h264|hqx|htc|ico|ief|img|ipa|iso|jad|jar|jardiff|jng|jnlp|jpeg|jpg|jpgv|jpm|js|jxr|key|kml|kmz|ktx|less|lha|lvp|lz|lzh|lzma|lzo|m2v|m3u|m4a|m4p|m4v|map|manifest|mar|markdown|md|mdi|mdown|mdwn|mht|mid|midi|mj2|mka|mkd|mkdn|mkdown|mkv|mml|mmr|mng|mobi|mov|movie|mp2|mp3|mp4|mp4a|mpe|mpeg|mpg|mpga|mpv|msi|msm|msp|mxf|mxu|nef|npx|nsv|numbers|o|oex|oga|ogg|ogv|opus|otf|pages|pbm|pcx|pdb|pdf|pea|pem|pgm|pic|pl|pm|png|pnm|pot|potm|potx|ppa|ppam|ppm|pps|ppsm|ppsx|ppt|pptm|pptx|prc|ps|psd|pya|pyc|pyo|pyv|qt|ra|rar|ras|raw|rdf|rgb|rip|rlc|rm|rmf|rmvb|ron|roq|rpm|rss|rtf|run|rz|s3m|s7z|safariextz|scpt|sea|sgi|shar|sil|sit|slk|smv|so|sub|svg|svgz|svi|swf|tar|tbz|tbz2|tcl|tga|tgz|thmx|tif|tiff|tk|tlz|topojson|torrent|ttc|ttf|txt|txz|udf|uvh|uvi|uvm|uvp|uvs|uvu|vcard|vcf|viv|vob|vtt|war|wav|wax|wbmp|wdp|weba|webapp|webm|webmanifest|webp|whl|wim|wm|wma|wml|wmlc|wmv|wmx|woff|woff2|wvx|xbm|xif|xla|xlam|xloc|xls|xlsb|xlsm|xlsx|xlt|xltm|xltx|xm|xmind|xml|xpi|xpm|xsl|xwd|xz|yuv|z|zip|zipx)(?:\?[a-zA-Z0-9\-\.\_\~\:\/\#\[\]\@\!\$\&\'\(\)\*\+\,\;\=]*)?$") {
      set $crawlable 0;
    }

    if ($fragment ~* "\.(?:3ds|3g2|3gp|3gpp|7z|a|aac|aaf|adp|ai|aif|aiff|alz|ape|apk|appcache|ar|arj|asf|asx|atom|au|avchd|avi|bak|bbaw|bh|bin|bk|bmp|btif|bz2|bzip2|cab|caf|cco|cgm|class|cmx|cpio|cr2|crt|crx|css|csv|cur|dat|deb|der|dex|djvu|dll|dmg|dng|doc|docm|docx|dot|dotm|dra|drc|DS_Store|dsk|dts|dtshd|dvb|dwg|dxf|ear|ecelp4800|ecelp7470|ecelp9600|egg|eol|eot|eps|epub|exe|f4a|f4b|f4p|f4v|fbs|fh|fla|flac|fli|flv|fpx|fst|fvt|g3|geojson|gif|graffle|gz|gzip|h261|h263|h264|hqx|htc|ico|ief|img|ipa|iso|jad|jar|jardiff|jng|jnlp|jpeg|jpg|jpgv|jpm|js|jxr|key|kml|kmz|ktx|less|lha|lvp|lz|lzh|lzma|lzo|m2v|m3u|m4a|m4p|m4v|map|manifest|mar|markdown|md|mdi|mdown|mdwn|mht|mid|midi|mj2|mka|mkd|mkdn|mkdown|mkv|mml|mmr|mng|mobi|mov|movie|mp2|mp3|mp4|mp4a|mpe|mpeg|mpg|mpga|mpv|msi|msm|msp|mxf|mxu|nef|npx|nsv|numbers|o|oex|oga|ogg|ogv|opus|otf|pages|pbm|pcx|pdb|pdf|pea|pem|pgm|pic|pl|pm|png|pnm|pot|potm|potx|ppa|ppam|ppm|pps|ppsm|ppsx|ppt|pptm|pptx|prc|ps|psd|pya|pyc|pyo|pyv|qt|ra|rar|ras|raw|rdf|rgb|rip|rlc|rm|rmf|rmvb|ron|roq|rpm|rss|rtf|run|rz|s3m|s7z|safariextz|scpt|sea|sgi|shar|sil|sit|slk|smv|so|sub|svg|svgz|svi|swf|tar|tbz|tbz2|tcl|tga|tgz|thmx|tif|tiff|tk|tlz|topojson|torrent|ttc|ttf|txt|txz|udf|uvh|uvi|uvm|uvp|uvs|uvu|vcard|vcf|viv|vob|vtt|war|wav|wax|wbmp|wdp|weba|webapp|webm|webmanifest|webp|whl|wim|wm|wma|wml|wmlc|wmv|wmx|woff|woff2|wvx|xbm|xif|xla|xlam|xloc|xls|xlsb|xlsm|xlsx|xlt|xltm|xltx|xm|xmind|xml|xpi|xpm|xsl|xwd|xz|yuv|z|zip|zipx)(?:\?[a-zA-Z0-9\-\.\_\~\:\/\#\[\]\@\!\$\&\'\(\)\*\+\,\;\=]*)?$") {
      set $crawlable 0;
    }

    proxy_pass_request_headers off;
    proxy_set_header   Host $proxy_host;
    proxy_hide_header  WWW-Authenticate;
    ########
    # Do not forget to change _YOUR_AUTH_TOKEN_ to token you get from ostr.io
    ########
    proxy_set_header   Authorization "Basic _YOUR_AUTH_TOKEN_";
    proxy_set_header   Connection "close";
    proxy_http_version 1.0;

    resolver 8.8.4.4 8.8.8.8 valid=300s;
    resolver_timeout 15s;

    if ($crawlable = 1) {
      sendfile   off;
      set $crawlable "render.ostr.io";
      proxy_pass https://$crawlable/?url=https://$host$orig_uri$fragment;
      break;
    }
  }
}
```

#### Advanced: WebSockets, socket.io, socketjs
In order to make Prerendering work with websites where WebSockets or its polyfill is used, it should be ignored for Prerendering.
```nginx
# Add to `location @crawlable` block:
location @crawlable {
  if ($request_uri ~* /sockjs/) {
    set $crawlable 0;
  }

  if ($http_upgrade) {
    set $crawlable 0;
  }
}
```

#### Advanced: Prerendering on Load Balancer
```nginx
upstream app {
  ip_hash;
  keepalive 500;
  server 1.example.com;
  server 2.example.com;
  server 3.example.com;
}

server {
  listen 80;
  listen [::]:80;
  server_name example.com;
  root /path/to/public;

  recursive_error_pages on;
  error_page 404 = @application;

  location / {
    try_files $uri @crawlable;
  }

  location @crawlable {
    set $crawlable 0;
    set $fragment '';
    set $orig_uri  $request_uri;

    if ($orig_uri ~ "^(.*)\?(.*)$") {
      set $orig_uri $1;
    }

    if ($http_user_agent ~* "\.net crawler|360spider|50\.nu|8bo crawler bot|aboundex|accoona|adldxbot|adsbot-google|ahrefsbot|altavista|appengine-google|applebot|archiver|arielisbot|ask jeeves|auskunftbot|baidumobaider|baiduspider|becomebot|bingbot|bingpreview|bitbot|bitlybot|blitzbot|blogbridge|boardreader|botseer|catchbot|catchpoint bot|charlotte|checklinks|cliqzbot|clumboot|coccocbot|converacrawler|crawl-e|crawlconvera|dataparksearch|daum|deusu|developers\.google\.com/+/web/snippet|discordbot|dotbot|duckduckbot|elefent|embedly|evernote|exabot|facebookbot|facebookexternalhit|fatbot|fdse robot|feed seeker bot|feedfetcher|femtosearchbot|findlinks|flamingo_searchengine|flipboard|followsite bot|furlbot|fyberspider|gaisbot|galaxybot|geniebot|genieo|gigablast|gigabot|girafabot|gomezagent|gonzo1|google sketchup|google-structured-data-testing-tool|googlebot|haosouspider|heritrix|holmes|hoowwwer|htdig|ia_archiver|idbot|infuzapp|innovazion crawler|instagram|internetarchive|iqdb|iskanie|istellabot|izsearch\.com|kaloogabot|kaz\.kz_bot|kd bot|konqueror|kraken|kurzor|larbin|leia|lesnikbot|linguee bot|linkaider|linkapediabot|linkedinbot|lite bot|llaut|lookseek|lycos|mail\.ru_bot|masidani_bot|masscan|mediapartners-google|metajobbot|mj12bot|mnogosearch|mogimogi|mojeekbot|motominerbot|mozdex|msiecrawler|msnbot|msrbot|netpursual|netresearch|netvibes|newsgator|ng-search|nicebot|nutchcvs|nuzzel|nymesis|objectssearch|odklbot|omgili|oovoo|oozbot|openfosbot|orangebot|orbiter|org_bot|outbrain|pagepeeker|pagesinventory|parsijoobot|paxleframework|peeplo screenshot bot|pinterest|plantynet_webrobot|plukkie|pompos|psbot|quora link preview|qwantify|read%20later|reaper|redcarpet|redditbot|retreiver|riddler|rival iq|rogerbot|saucenao|scooter|scrapy|scrubby|searchie|searchsight|seekbot|semanticdiscovery|seznambot|showyoubot|simplepie|simpy|sitelockspider|skypeuripreview|slack-imgproxy|slackbot|slurp|snappy|sogou|solofield|speedy spider|speedyspider|sputnikbot|stackrambler|teeraidbot|teoma|theusefulbot|thumbshots\.ru|thumbshotsbot|tineye|toweya\.com|toweyabot|tumblr|tweetedtimes|tweetmemebot|twitterbot|url2png|vagabondo|vebidoobot|viber|visionutils|vkshare|voilabot|vortex|votay bot|voyager|w3c_validator|wasalive\.bot|web-sniffer|websquash\.com|webthumb|whatsapp|whatweb|wire|wotbox|yacybot|yahoo|yandex|yeti|yisouspider|yodaobot|yooglifetchagent|yoozbot|yottaamonitor|yowedo|zao-crawler|zebot_www\.ze\.bz|zooshot|zyborg") {
      set $crawlable 1;
    }

    if ($args ~ _escaped_fragment_) {
      set $crawlable 1;
    }

    if ($args ~ "_escaped_fragment_=(.+)") {
      set $fragment /$1;
    }

    if ($uri ~* "\.(?:3ds|3g2|3gp|3gpp|7z|a|aac|aaf|adp|ai|aif|aiff|alz|ape|apk|appcache|ar|arj|asf|asx|atom|au|avchd|avi|bak|bbaw|bh|bin|bk|bmp|btif|bz2|bzip2|cab|caf|cco|cgm|class|cmx|cpio|cr2|crt|crx|css|csv|cur|dat|deb|der|dex|djvu|dll|dmg|dng|doc|docm|docx|dot|dotm|dra|drc|DS_Store|dsk|dts|dtshd|dvb|dwg|dxf|ear|ecelp4800|ecelp7470|ecelp9600|egg|eol|eot|eps|epub|exe|f4a|f4b|f4p|f4v|fbs|fh|fla|flac|fli|flv|fpx|fst|fvt|g3|geojson|gif|graffle|gz|gzip|h261|h263|h264|hqx|htc|ico|ief|img|ipa|iso|jad|jar|jardiff|jng|jnlp|jpeg|jpg|jpgv|jpm|js|jxr|key|kml|kmz|ktx|less|lha|lvp|lz|lzh|lzma|lzo|m2v|m3u|m4a|m4p|m4v|map|manifest|mar|markdown|md|mdi|mdown|mdwn|mht|mid|midi|mj2|mka|mkd|mkdn|mkdown|mkv|mml|mmr|mng|mobi|mov|movie|mp2|mp3|mp4|mp4a|mpe|mpeg|mpg|mpga|mpv|msi|msm|msp|mxf|mxu|nef|npx|nsv|numbers|o|oex|oga|ogg|ogv|opus|otf|pages|pbm|pcx|pdb|pdf|pea|pem|pgm|pic|pl|pm|png|pnm|pot|potm|potx|ppa|ppam|ppm|pps|ppsm|ppsx|ppt|pptm|pptx|prc|ps|psd|pya|pyc|pyo|pyv|qt|ra|rar|ras|raw|rdf|rgb|rip|rlc|rm|rmf|rmvb|ron|roq|rpm|rss|rtf|run|rz|s3m|s7z|safariextz|scpt|sea|sgi|shar|sil|sit|slk|smv|so|sub|svg|svgz|svi|swf|tar|tbz|tbz2|tcl|tga|tgz|thmx|tif|tiff|tk|tlz|topojson|torrent|ttc|ttf|txt|txz|udf|uvh|uvi|uvm|uvp|uvs|uvu|vcard|vcf|viv|vob|vtt|war|wav|wax|wbmp|wdp|weba|webapp|webm|webmanifest|webp|whl|wim|wm|wma|wml|wmlc|wmv|wmx|woff|woff2|wvx|xbm|xif|xla|xlam|xloc|xls|xlsb|xlsm|xlsx|xlt|xltm|xltx|xm|xmind|xml|xpi|xpm|xsl|xwd|xz|yuv|z|zip|zipx)(?:\?[a-zA-Z0-9\-\.\_\~\:\/\#\[\]\@\!\$\&\'\(\)\*\+\,\;\=]*)?$") {
      set $crawlable 0;
    }

    if ($fragment ~* "\.(?:3ds|3g2|3gp|3gpp|7z|a|aac|aaf|adp|ai|aif|aiff|alz|ape|apk|appcache|ar|arj|asf|asx|atom|au|avchd|avi|bak|bbaw|bh|bin|bk|bmp|btif|bz2|bzip2|cab|caf|cco|cgm|class|cmx|cpio|cr2|crt|crx|css|csv|cur|dat|deb|der|dex|djvu|dll|dmg|dng|doc|docm|docx|dot|dotm|dra|drc|DS_Store|dsk|dts|dtshd|dvb|dwg|dxf|ear|ecelp4800|ecelp7470|ecelp9600|egg|eol|eot|eps|epub|exe|f4a|f4b|f4p|f4v|fbs|fh|fla|flac|fli|flv|fpx|fst|fvt|g3|geojson|gif|graffle|gz|gzip|h261|h263|h264|hqx|htc|ico|ief|img|ipa|iso|jad|jar|jardiff|jng|jnlp|jpeg|jpg|jpgv|jpm|js|jxr|key|kml|kmz|ktx|less|lha|lvp|lz|lzh|lzma|lzo|m2v|m3u|m4a|m4p|m4v|map|manifest|mar|markdown|md|mdi|mdown|mdwn|mht|mid|midi|mj2|mka|mkd|mkdn|mkdown|mkv|mml|mmr|mng|mobi|mov|movie|mp2|mp3|mp4|mp4a|mpe|mpeg|mpg|mpga|mpv|msi|msm|msp|mxf|mxu|nef|npx|nsv|numbers|o|oex|oga|ogg|ogv|opus|otf|pages|pbm|pcx|pdb|pdf|pea|pem|pgm|pic|pl|pm|png|pnm|pot|potm|potx|ppa|ppam|ppm|pps|ppsm|ppsx|ppt|pptm|pptx|prc|ps|psd|pya|pyc|pyo|pyv|qt|ra|rar|ras|raw|rdf|rgb|rip|rlc|rm|rmf|rmvb|ron|roq|rpm|rss|rtf|run|rz|s3m|s7z|safariextz|scpt|sea|sgi|shar|sil|sit|slk|smv|so|sub|svg|svgz|svi|swf|tar|tbz|tbz2|tcl|tga|tgz|thmx|tif|tiff|tk|tlz|topojson|torrent|ttc|ttf|txt|txz|udf|uvh|uvi|uvm|uvp|uvs|uvu|vcard|vcf|viv|vob|vtt|war|wav|wax|wbmp|wdp|weba|webapp|webm|webmanifest|webp|whl|wim|wm|wma|wml|wmlc|wmv|wmx|woff|woff2|wvx|xbm|xif|xla|xlam|xloc|xls|xlsb|xlsm|xlsx|xlt|xltm|xltx|xm|xmind|xml|xpi|xpm|xsl|xwd|xz|yuv|z|zip|zipx)(?:\?[a-zA-Z0-9\-\.\_\~\:\/\#\[\]\@\!\$\&\'\(\)\*\+\,\;\=]*)?$") {
      set $crawlable 0;
    }

    proxy_pass_request_headers off;
    proxy_set_header   Host $proxy_host;
    proxy_hide_header  WWW-Authenticate;
    ########
    # Do not forget to change _YOUR_AUTH_TOKEN_ to token you get from ostr.io
    ########
    proxy_set_header   Authorization "Basic _YOUR_AUTH_TOKEN_";
    proxy_set_header   Connection "close";
    proxy_http_version 1.0;

    resolver 8.8.4.4 8.8.8.8 valid=300s;
    resolver_timeout 15s;

    if ($crawlable = 1) {
      sendfile   off;
      set $crawlable "render.ostr.io";
      proxy_pass https://$crawlable/?url=https://$host$orig_uri$fragment;
      break;
    }

    return 404;
  }

  location @application {
    sendfile            off;
    proxy_http_version  1.1;
    proxy_pass http://app;
    break;
  }
}
```
