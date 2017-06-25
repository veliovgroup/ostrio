Change default SSH port
======

When it comes to basic Linux security and "best practice", the best idea is to start with changing default SSH port. Why? - Most of automatic brute-force software will start with attacking default `22` port.

We will be editing `/etc/ssh/sshd_config` file, and will set `64537`:
```shell
# nano /etc/ssh/sshd_config

# Find line starting with "Port":
Port 64537

# Save file with: "ctrl + o" combination
# Close file with: "ctrl + x" combination
```

Restart SSH service:
```shell
service sshd restart
```

To connect again via SSH explicitly set port via `-p` flag:
```shell
ssh -p 64537 username@host
```

### Further reading:
 - [Disable root login via SSH](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/disable-ssh-root.md)
 - [Use SSH keys to login](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/security/use-ssh-keys.md)
