Linux / Security / Basic firewall with iptables
======

__NOTE:__ This is expert-level settings setup. You must know what you're doing and do not blindly copy-paste commands and rules described below, otherwise you may end up with unaccessible server

This tutorial will set iptables rules to accept traffic only on `http (80)`, `https (443)` and `ssh (22)` ports. Which is fine setup for most basic applications. Using suggested rules you're free to add more udp/tcp ports on demand.

See also great article on iptables rules by [Digital Ocean](https://www.digitalocean.com/community/tutorials/iptables-essentials-common-firewall-rules-and-commands).

Start with creating blank iptables file:
```shell
iptables-save > /etc/firewall.conf
```

Now edit exported rules:
```shell
# nano /etc/firewall.conf
# You should end up with something like:
:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
-A INPUT -i lo -j ACCEPT
-A OUTPUT -o lo -j ACCEPT
-A OUTPUT -j ACCEPT

-A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
-A OUTPUT -m conntrack --ctstate ESTABLISHED -j ACCEPT
-A INPUT -m conntrack --ctstate INVALID -j DROP

-A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
-A OUTPUT -p tcp --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT

-A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 80 -j ACCEPT

-A INPUT -j DROP
-A FORWARD -j REJECT
```

To test rules run:
```shell
iptables-restore < /etc/firewall.conf
```

To make created rules persistent, create file `/etc/network/if-up.d/firewall`
```shell
#!/bin/sh
iptables-restore < /etc/firewall.conf
```

Make it executable:
```shell
chmod +x /etc/network/if-up.d/firewall
```

