# Custom status codes

The "status codes" chart in pre-rendering panel displays origin response codes from rendered pages. In addition in may display custom `7**` codes that intended to help in debugging and improving pre-rendering integration, here's custom codes meanings:

- `701` and `702` — Credentials error
- `703` — Insufficient credits; Origin page is returned bypassing pre-rendering
- `704` — Pre-rendering requesting features not available in current plan/tariff (e.g. subdomains, load-images, etc)
- `705` — Unexpected error
- `707` — Too many errors on the original page (unrecoverable JS or HTML errors); Origin page is returned bypassing pre-rendering
- `708` — Origin takes too long to respond 90+ seconds; Origin page is returned bypassing pre-rendering
