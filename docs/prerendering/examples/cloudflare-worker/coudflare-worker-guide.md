# CloudFlare Worker Integration

Step-by-step integration instructions for ostr.io pre-rendering via CloudFlare Workers

1. Sign up for ostr.io
2. Add server/domain following on-boarding guidance
3. Verify domain ownership using `DNS TXT` record adding via CloudFlare interface
4. Inside server's panel click on <kbd>add</kbd> next to "Pre-rendering & SSR for SEO"
5. Inside server's pre-rendering panel scroll down to <kbd>integration guide</kbd>
6. In the <kbd>CLOUDFLARE</kbd> tab — grab `env.OSTR_AUTH` value for CloudFlare's WebWorker environment variable
7. __Create CF Worker:__
    - __In sidebar menu:__ Compute (Workers) > Workers & Pages > <kbd>Create</kbd> > Select "Start with Hello World!" or "Create Worker via CloudFlare Dashboard"
    - New Worker > Enter memorable name (ex.: `examplecom-prerendering-worker`) > click on <kbd>deploy</kbd>
    - Worker > click on <kbd>Edit Code</kbd>
    - Worker Editor > Remove default code and replace with [CF Worker Code](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/examples/cloudflare-worker/cloudflare.worker.js)
    - Worker Editor > click on <kbd>Deploy</kbd>
    - Workers & Pages > Open Newly Created Worker > Settings > Variables and Secrets > Click on <kbd>Add</kbd> button:
        - Type: `test`
        - Variable Name: `OSTR_AUTH`
        - Value: Place value (*from step no.6*) that starts with `Basic ...`
    - Click on <kbd>Deploy</kbd> after adding `OSTR_AUTH` variable
8. __Connect Worker to a website__
    - Account Home > (*click on your domain name*) > Workers Routes > [Add Route]
    - Route (one of below):
        - Standard (*recommended*): `https://example.com/*` or `https://www.example.com/` (*if `www.` is your primary website location*)
        - `http:` and `https:` protocols : `*example.com/*`
        - Main domain and all subdomains (*PRO and BUSINESS plans only*) `*example.com/*`
        - All for subdomains __only__ (*PRO and BUSINESS plans only*) `*.example.com/*`
    - Worker: Select newly created worker from dropdown
    - Click on <kbd>save</kbd>
9. __Purge cache:__ Websites > example.com > Caching > Configuration > <kbd>Purge Everything</kbd>
10. __Check `X-Prerender-Id` header to confirm that pre-rendering works__
    - Request using cURL: `curl -v -A GoogleBot "https://example.com/"`
    - Ensure `X-Prerender-Id` header returned with response
    - Check ostr.io: Rendering statistics will appear in real-time
11. Further reading:
    - [Speed-up rendering](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/optimization.md#speed-up-rendering)
    - [Detect requests from pre-rendering](https://github.com/veliovgroup/ostrio/blob/master/docs/prerendering/detect-prerendering.md)

## Example

Example of CloudFlare Worker setting for pre-rendering

![pre-rendrering-cloudflare-worker-example](https://github.com/user-attachments/assets/b082fe5c-199f-4565-8789-2e09c700a563)
