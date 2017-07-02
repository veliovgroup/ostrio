Prerendering Cache Purging
======

### Full cache purging:
In the case of significant changes on a website, cached results can be purged. Full cache purging available once per 2 hours.


![Purge Full Prerendering Cache Screenshot](https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/prerendering-cache-purge.png?raw=true)

### Individual page cache purge:
While full cache purging is limited by time-frame. The individually cached page can be purged anytime without limits. To purge single page from cache "Cache ID" have to be obtained in response headers as `X-Prerender-Id`.

<table><tbody><tr>
  <td>
    <img src="https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/prerendering-cache-id.png?raw=true" alt="Prerendering Id Header Screenshot">
  </td>
  <td>
    <img src="https://github.com/VeliovGroup/ostrio/blob/master/docs/prerendering/prerendering-cache-purge-single.png?raw=true" alt="Purge Single Page from Prerendering Cache Screenshot">
  </td>
</tr></tbody></table>

### Notes:
While cache is purged from Prerendering engine it may remain cached for up to 2 hours on intermediate proxy servers.