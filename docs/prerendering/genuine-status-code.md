# Return Genuine Status Code

- For more detailed documentation see [`spiderable-middleware` package repository](https://github.com/VeliovGroup/spiderable-middleware#return-genuine-status-code)

Returning genuine status code is very important for indexing by search engines. Most of the front-end JavaScript frameworks returns the same page to every request with `200 OK` status code, mean `404` pages rendered in a browser is returned with `200`status to the web crawlers.

To return expected response code — use this HTML comment. This comment __can be placed in any part of HTML-page__. `head` or `body` tag is the best place for it.

## Format:

__html:__

```html
<!-- response:status-code=404 -->
```

__jade:__

```jade
// response:status-code=404
```

Use __any__ standard or custom status codes:

- `201` - `<!-- response:status-code=201 -->`
- `401` - `<!-- response:status-code=401 -->`
- `403` - `<!-- response:status-code=403 -->`
- `500` - `<!-- response:status-code=500 -->`
- `514` - `<!-- response:status-code=514 -->` (*non-standard*)

## Result:

![Return Genuine Status Code Screenshot](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/prerendering-genuine-status-code.png?raw=true)
