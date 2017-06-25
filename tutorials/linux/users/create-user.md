Create new system user
======

### Why create another system users in Linux?
 - Web-applications should run under its own users, to isolate system files in case of the breach
 - Databases should run under its own user
 - SSH login should be allowed to user with limited permissions on server, and disabled for `root` user
 - Other security and usage reasons

### We can differentiate two basic Linux users types:
 - With login permissions (password and home folder is not set)
 - Without login permissions

__NOTE:__ change `username` to actual users' name

### Password-less user
Let's start with login-less (*or password-less*) users (most secure, best for running isolated web-apps):
```shell
useradd username

# that's it
```

To allow login as `user` without password, just set new password for such user:
```shell
passwd username

# this command will ask
# to prompt new password twice
```

To add home folder for such limited user, run:
```shell
# Create folder
mkdir -p /home/username
# Set home folder
usermod -m -d /home/username username
```

### Full-featured user
Fully capable user (with password, home folder and SSH access) can be created with single command:
```shell
adduser username

# this command will ask
# to fill additional info about user
# it can be safely skipped with hitting ENTER
# But do not skip password, and prompt it twice
# Finally, to confirm provided info - press "Y"
```

### Further reading:
 - [rbash - restricted users](https://github.com/VeliovGroup/ostrio/blob/master/tutorials/linux/users/rbash.md)
