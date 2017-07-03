Disable SSH login for root user
======

### Why?
 - Most of the automatic brute-force software will start with attacking SSH service on `22` port and try to find a password for `root` user
 - Not only `root` user is under risk, brute-force software has rich dictionaries of most common used user-names, so it's a good idea to [create user](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/create-user.md) with some random-gibberish name, like: `hjkGJY78_ajks`

### Before you go:
 - [Create Linux user](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/create-user.md)
 - [Create restricted Linux user](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/rbash.md)

We will be editing `/etc/ssh/sshd_config` file:
```shell
# nano /etc/ssh/sshd_config

# Find line starting with "PermitRootLogin"
# change "yes" to "no":
PermitRootLogin no

# Save file with: "ctrl + o" combination
# Close file with: "ctrl + x" combination
```

Add more security, with limiting login only to one user (*optional*):
```shell
# nano /etc/ssh/sshd_config

# Add new line, where username
# is a name of ONLY allowed to login
# over SSH user:
AllowUsers username

# Save file with: "ctrl + o" combination
# Close file with: "ctrl + x" combination
```

Restart SSH service:
```shell
service sshd restart
```

### Further reading:
 - [Change Default SSH port](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/change-ssh-port.md)
 - [Use SSH keys to login](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/use-ssh-keys.md)
