Multiple Server / Replica Set
======

For more info see [original article](https://veliovgroup.com/article/2qsjtNf8NSB9XxZDh/mongodb-replica-set-with-oplog).

### Before you go:
 - Replica Set requires __at least 3__ servers (virtual or dedicated, if more than 3 servers - number of servers must be odd (e.g. 3, 5, 7, 9...))
 - Read how to [use SSL certificates with MongoDB](https://github.com/veliovgroup/ostrio/blob/master/tutorials/mongodb/use-ssl-http-encryption.md)
 - Make sure MongoDB port is open and accessible for other members of replica set, usually done with `iptables`. At least make sure all servers can ping each other

We will use wiredTiger as engine, you can read [its release notes](https://www.mongodb.com/blog/post/whats-new-mongodb-30-part-3-performance-efficiency-gains-new-storage-architecture) to find out more about its benefits.

### Definitions:
 - `admin` user - User with full `root` access to MongoDB features and commands
 - `appUser` - User with `readWrite` access to database used for your application
 - `appDB` - Database used for application
 - `<password>` - placeholder, should be changed to strong password. __Always placed in double quotes__

### 1. Installation:
On __each__ server follow steps described in [installation guide](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-debian). During installation `mongodb` user in `mongodb` group will be created automatically

### 2. On __each__ server create and set right permissions for storage folder:
```shell
mkdir -p /data/mongo
chmod 755 /data
chown -R mongodb:mongodb /data/mongo
```

### 3. On __each__ server create and set permissions for log folder:
```shell
mkdir -p /var/log/mongodb
chown -R mongodb:mongodb /var/log/mongodb
```

### 4. On __each__ server remove `mongod` service scripts (*if exists*):
```shell
rm /etc/init.d/mongod
```

### 5. On __each__ server edit MongoDB configuration file (`nano /etc/mongod.conf`):
Change `[PORT, DEFAULT: 27017]` to port of your choice.

Change `[IP ADDRESS, OR DOMAIN NAME]` to public IP address, VLAN/LAN IP Address, or domain name (can be comma separated, like: mongo.example.com,127.0.0.1,A.B.C.D). Domain name is required if SSL is set to `requireSSL` ([more info](https://github.com/veliovgroup/ostrio/blob/master/tutorials/mongodb/use-ssl-http-encryption.md))
```yaml
processManagement:
  fork: true
storage:
  dbPath: /data/mongo
  journal:
    enabled: true
  engine: wiredTiger
net:
  port: [PORT, DEFAULT: 27017]
  bindIp: [IP ADDRESS, OR DOMAIN NAME]
  unixDomainSocket:
    enabled: false
operationProfiling:
  slowOpThresholdMs: 2100
  mode: off
replication:
  replSetName: rs0
```

### 6. On __one__ server generate shared auth key:
For secure communication between Replica Set members ([more info](https://docs.mongodb.com/v3.2/tutorial/enforce-keyfile-access-control-in-existing-replica-set/)):
```shell
openssl rand -base64 741 > /data/mongo/key
chown mongodb:mongodb /data/mongo/key
chmod 400 /data/mongo/key

# Copy-paste generated key
# to other servers (members)
# so see key contents run:
cat /data/mongo/key
```

### 7. On __each__ server create CRON job:
To start MongoDB as `mongodb` user (`crontab -u mongodb -e`):
```cron
@reboot /usr/bin/mongod --config /etc/mongod.conf --fork
```

### 8. Reboot each machine (server)

### 9. Check logs for errors:
```shell
tail -n 50 -f /var/log/mongodb/mongod.log
# ctrl + c to exit tail command
```

### 10. On __one__ server configure and initiate Replica Set:
```shell
# Mongo Shell
var conf = {
  "_id" : "rs0",
  "members" : [
    {
      "_id" : 0,
      "host" : "[MEMBER IP/or/DOMAIN 1]:[PORT, DEFAULT: 27017]"
    },
    {
      "_id" : 1,
      "host" : "[MEMBER IP/or/DOMAIN 2]:[PORT, DEFAULT: 27018]"
    },
    {
      "_id" : 2,
      "host" : "[MEMBER IP/or/DOMAIN 3]:[PORT, DEFAULT: 27019]"
    }
  ]
}
rs.initiate(conf)
```

### 11. Define PRIMARY member:
Next steps should be performed only on PRIMARY member. To find out which member is primary, run:
```shell
# Mongo Shell
rs.status()
```

### 12. On PRIMARY: Create `admin` user:
With `root` privileges:
```shell
# Mongo Shell
use admin
db.createUser({user:"admin", pwd:<password>, roles:[{role:"root", db:"admin"}]})
```

### 13. On __each__ server update CRON job:
To start MongoDB with `--auth` option (`crontab -u mongodb -e`) this will protect MongoDB from unauthorized access (for higher security read [this article](https://docs.mongodb.com/manual/administration/security-checklist/)):
```cron
@reboot /usr/bin/mongod --config /etc/mongod.conf --auth --fork
```

### 14. On __each__ server add next lines:
Into MongoDB configuration file: 
```yaml
# nano /etc/mongod.conf
security:
  keyFile: /data/mongo/key
```

### 15. Reboot the machine

### 16. On PRIMARY: Create application user:
With `readWrite` permissions for db of your app (*you will use this user to access MongoDB from your application*):
```shell
# Mongo Shell `mongo -u "admin" -p <password> --authenticationDatabase "admin"`
use admin
db.createUser({user:"appUser", pwd:<password>, roles:[{role:"readWrite", db:"appDB"}]})
```

### 17. On PRIMARY: Make sure all users are properly created:
```shell
# Mongo Shell `mongo -u "admin" -p <password> --authenticationDatabase "admin"`
use admin
show users
```

### 18. Update connection string:
```plain
mongodb://appUser:<password>@<IP_OR_DOMAIN_1>:<PORT>,<IP_OR_DOMAIN_2>:<PORT>,<IP_OR_DOMAIN_3>:<PORT>/appDB?authSource=admin&replicaSet=rs0
```

### Further reading:
 - [Use and configure OpLog](https://github.com/veliovgroup/ostrio/blob/master/tutorials/mongodb/enable-oplog.md)