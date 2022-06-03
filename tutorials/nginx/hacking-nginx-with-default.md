# Hacking Nginx

Here's a little-known tunning option via setting `server_name` to `_`

```nginx
server {
  listen 80 default_server fastopen=256 deferred reuseport so_keepalive=on;
  listen [::]:80 default_server fastopen=256 deferred reuseport so_keepalive=on ipv6only=on;
  server_name _;

  # [optionally] include other configuration files here
  # to extend default server functionality with for example
  # best practices security check for access and permissions
  # include /path/to/file.conf
  return 444;
}

# Enable for SSL/TLS/HTTPS enabled websites
#
# server {
#   listen 443 default_server ssl http2 fastopen=256 deferred reuseport so_keepalive=on;
#   listen [::]:443 default_server ssl http2 fastopen=256 deferred reuseport so_keepalive=on ipv6only=on;
#   server_name _;

#   # [optionally] include other configuration files here
#   # to extend default server functionality with for example
#   # best practices security check for access and permissions
#   # include /path/to/file.conf
#   #
#   # In SSL/HTTPS server a TLS certificate definition
#   # should be included here:
#   include /etc/nginx/ssl.conf

#   return 444;
# }
```
