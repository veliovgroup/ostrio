Permanently change server timezone
======

Often you may want to set your server(s) to some exact time zone, and exclude cases of time shift when daylight saving time, winter time, summer time, etc. occurs.

We suggest always to use UTC time zone (`+0:00`)

```shell
dpkg-reconfigure tzdata
# in the list select "etc" or "none of the above"
# than select "UTC"
```
