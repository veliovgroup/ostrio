# SEO Middleware Worker for Shopify

Step-by-step integration instructions for ostr.io pre-rendering for Shopify domains via CloudFlare Workers

## ToC

- [Setup domain name at CloudFlare]()
- [Setup domain name at ostr.io]()
- [Create CloudFlare Worker and Connect to Domain]()
- [Check that setup is correctly configured and working]()
   - [Check via Browser]()
   - [Check in Terminal/Console using `curl`]()

### Setup domain name at CloudFlare

To begin Shopify pre-rendering integration via CloudFlare ensure you have active account and connected domain name.

1. [Sign up](https://dash.cloudflare.com/sign-up) of [Login](https://dash.cloudflare.com/login) to CloudFlare
2. __Add domain:__ "Account Home" > click on <kbd>Onboard a domain</kbd>
3. Go through on-boarding steps, under "__Block AI training bots__" section select "__Do not block (off)__" option
4. __Setup DNS:__ Ensure `A` and `CNAME` records correctly pointing to Shopify:
    - __a.__ For shops on `www.` and other subdomains (e.g. `www.example.com` or `shop.example.com`):
        - `A`: `23.227.38.65`
        - `CNAME`: `shops.myshopify.com`
    - __b.__ For shops on TLD/primary domain (e.g. `example.com`):
       - `CNAME`: `shops.myshopify.com`
       - __NOTE: NO `A` RECORD NEEDED FOR TLD DOMAIN__

### Setup domain name at ostr.io

Create a new account if you don't have one yet. Then add and verify your domain ownership.

1. [Sign up](https://ostr.io/signup) or [Login](https://ostr.io/login) to ostr.io
2. Add server/domain following on-boarding guidance
3. Verify domain ownership using `DNS TXT` record adding via CloudFlare interface
4. Inside server's panel under "Available Services" section click on <kbd>add</kbd> next to "Pre-rendering"
5. Inside server's pre-rendering panel scroll down to <kbd>integration guide</kbd>
6. In the <kbd>CLOUDFLARE</kbd> tab — grab `env.OSTR_AUTH` value for CloudFlare's WebWorker environment variable

### Create CloudFlare Worker and Connect to Domain

1. Go to "Account Home" in the sidebar
2. __In the sidebar:__ Compute (Workers) > Workers & Pages
3. At __Workers & Pages__ page click on <kbd>Create</kbd> > Then select "Start with Hello World!"
4. __New Worker Form__: Enter memorable name (ex.: `examplecom-seo-worker`) > click on <kbd>Deploy</kbd>
5. After __new Worker__ created > click on <kbd>Edit Code</kbd>
6. At __Worker Editor__ > Remove default "Hello World" worker code and replace with [CF Worker Code tailored for Shopify](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/examples/cloudflare-worker/shopify.clouflare.worker.js)
7. After Worker's code placed into __Worker Editor__ > click on <kbd>Deploy</kbd>
8. __Pass API key to CloudFlare Worker via environment variable__
    - Go to "Workers & Pages" > Open Newly Created Worker > Settings > Variables and Secrets > Click on <kbd>Add</kbd> button:
        - Type: `text`
        - Variable Name: `OSTR_AUTH`
        - Value: Place value (*from "integration guide", see step no.6*) that starts with `Basic ...`
    - Click on <kbd>Deploy</kbd> after adding `OSTR_AUTH` variable
9. __Connect Worker to a website__
    - Go to "Account Home" > Domains > (*click on your domain name*)
    - In sidebar open "__Workers Routes__" > HTTP Routes > click on <kbd>Add Route</kbd>
    - __Add Route__: `https://example.com/*` or `https://subdomain.example.com/` (*if `www.` or other subdomain is your primary website location; __Should match primary domain settings in Shopify__*)
    - __Worker:__ Select newly created worker from dropdown
    - Click on <kbd>save</kbd>
10. __Purge cache at CloudFlare__
    - Go to "Account Home" in the sidebar menu
    - (*click on your domain name*) > Caching > Configuration > <kbd>Purge Everything</kbd>

### Check that setup is correctly configured and working

Check that `X-Prerender-Id` exists in response headers

#### Via Browser

1. Open DevTools
    - Windows: <kbd>F12</kbd> or <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>I</kbd>
    - MacOS: <kbd>Option</kbd> + <kbd>⌘</kbd> + <kbd>I</kbd>
2. __In DevTools:__ OPen "Network" tab and check "Disable Cache" checkbox
3. Open shop URL adding `?_escaped_fragment_=` query at the end. Ex.: `https://example.com/?_escaped_fragment_=/`
4. Ensure `X-Prerender-Id` header returned with response
5. Check ostr.io: Rendering statistics will appear in real-time

#### Via Terminal/Console using CURL

1. Request using cURL: `curl --head -A GoogleBot "https://example.com/"`
2. Ensure `X-Prerender-Id` header returned with response
3. Check ostr.io: Rendering statistics will appear in real-time

## Further reading

- 🏎️ [Speed-up rendering](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/optimization.md#speed-up-rendering)
- 🤖 [Detect requests from pre-rendering](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/detect-prerendering.md)
- 📔 [Detailed Pre-rendering service documentation](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/README.md)
