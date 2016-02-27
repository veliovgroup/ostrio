_app.i18n.en.docs = 
  title: 'Documentation'
  meta:
    description: 'How to properly use ostr.io? How to receive SMS messages about SSH logins or server downtime? How to monitor server load and prevent longer website response time?'
  basics:
    title: 'Service Explained'
    text: """
    Ostr.io is a web real-time application. The main purpose is protect servers and websites from potential risks, like, but not limited to: downtime, longer response time and suspicious activity and data integrity breach. The method to prevent such cases is data collection, control and analysis, and immediate notifications about accidents to responsible persons.
    """

  forWhom:
    title: 'For whom?'
    text: """
    Our solution is suitable of all persons involved into IT development process. From clients, to tech support. Let's look to next cases:

    #### Case 1
    Assuming we have assembled web-application developed by IT-company (ITC) for company selling things (CST), with next functionality:

    - User accounts
    - Shopping cart
    - Products listing

    ITC not only developed on-line store for CST, but administrate servers for hosting, planned further development and provide full tech support. And promised 99% uptime (with horizontal scaling in mind) with reporting about all accidents. Also ITC is asked to inform about every 10,000 registered users and percentage of active users.

    For such case our solution can prevent 80% of potential accidents and cover 50% of tasks by automating them. First, for health monitoring all servers can be connected via SSH endpoints. With setting up notifications for low RAM and HDD space, all responsible persons will respond urgently to critical events.

    To automate notifications about registered and active users, we will create custom endpoint, which will return count from DB as JSON `{"users": 2439, "active": 15}`. This endpoint will be user/password-protected on proxy-server level. Once endpoint is created, collected data will be built into nice-looking charts. Preliminarily we added and verified phone numbers and email addresses of product-manager, administrator and manager from CST.
    Our product-manager and client will receive message about every 10,000 registered user, and administrator will receive message once endpoint become unavailable or respond for too long time.

    #### Case 2
    When you're working alone or in terms of small company - often you just don't have time to check, monitor and manage all yours and client's servers, hostings and websites. Especially when someone moving to you with already formed infrastructure, old code and databases. Ostr.io is coming with help here, with quick setup all systems is up, running and monitored.
    """

  how:
    title: 'How it works'
    text: """
    We monitor IP(s), DNS and Whois records for added servers and domain names. You may set notifications for any changes in this data.

    We monitor your endpoints, which is returning useful data of server health. We kindly collect this data for your further analysis. You set notification breakpoints for this data, once collected data meets defined notification breakpoint - we will send emails and SMS messages, to selected list of contacts.
    """

  cost:
    title: 'The cost'
    text: """
    We have a free plan, which allows to monitor IP(s), SSL (TLS) certificate, DNS and Whois records.

    The "paid" plan is allow you to receive SMS messages, add endpoints and collect custom data. Monthly price is $9.95 per server. You can cancel at any time, all unused credit will be returned into yours balance.

    All new accounts getting $15 as starting credit, this is enough for one month of free usage, including SMS notifications.

    All SMS-messages paid separately. As we don't have a goal to earn from SMS messages - you pay as much as SMS costs, on-the-go. Cost of each SMS is depends from carrier and country. If yours account balance is too low for SMS - you will be notified to primary email-address. Also you will be notified 3 SMS before hitting balance limits.
    """

  preventDomainHijacking:
    title: 'Prevent domain hijacking'
    text: """
    By adding domain name to Ostr.io you can instantly start monitoring primary IP addresses, SSL (TLS) certificate, DNS and Whois records. Set up notifications about all changes in IP(s), DNS and Whois for all responsible persons. This is becoming very useful for popular case - when domain name is managed by its owner, but servers, websites, DBs and etc. is managed and operating by third IT-company.

    Changes and suspicious activity in IP(s), SSL (TLS) certificate, DNS and Whois records is first indicator of domain hijacking and fraud activity. To prevent such cases we highly recommend to monitor this data, and set up notifications for all responsible persons, this feature is 100% free. The main difference between "Free" and "Paid" plan is ability to send notifications not only via email, but SMS. SMS notifications is a way to take action urgently, to prevent all fraud activities.

    Always remember to extend your domain names registration period and re-issue SSL certificates. And Ostr.io will help you with it. Set notifications for expiration date and Ostr.io will send you and all required contacts notifications a moth, a week and a day before domain will expire. For domains with SSL (TLS) certificates the fingerprint CRC and expiration date notifications is available too. For more info about SSL (TLS) certificates monitoring - see below.
    """

  SSLcertificate:
    title: 'SSL (TLS) certificate CRC'
    text: """
    It's easy to miss an expiration date of SSL (TLS) certificate. It's very important to re-issue new certificate in proper time, as this may cause big traffic cancellation on your resources.

    To enable SSL (TLS) certificate CRC monitoring you have to prefix your server address with `https` protocol (scheme) when adding a new server, like: `https://example.com`. Once SSL certificate is fetched and validated - Ostr.io will regularly check its fingerprint. Also Ostr.io will notify about coming expiration date - a month, a week and a day before SSL (TLS) certificate will expire.
    """

  domainExpiration:
    title: 'Notifications about domain expiration'
    text: """
    If expiration date is available in Whois record (*available on 98% domains*). You're able to set notifications for all responsible persons (*primary useful for domain owner*) about coming expiration date. Ostr.io will send notifications a month, a week and a day before domain will expire.

    It is important to extend your domain registration period, as once its expired - domain may be taken by anyone. And there is no chance to get it back.
    """

  contentCRC:
    title: 'Prevent integrity violation and data substitution'
    text: """
    Any (`http` or `https`) endpoint can be adjusted to provide consistency of sensitive data. Just create endpoint which is pointed to data source, which must stay unchanged. This data can be represented as HTML, output from DB(s), checksum or any other.

    Under "*Content*" section of endpoint you can set up notifications for all changes. Once data is changed it will be reported to all checked contacts via email and/or SMS.

    This is very useful for sensitive data, like (but not limited to):

    - Contact pages;
    - Server(s) fingerprint;
    - Database schema(s);
    - File system checksums
    - OS critical data (ex.: `/etc/passwd`);
    - Codebase integrity (prevent encapsulations).
    """

  addEmail:
    title: 'Add and verify Email Address'
    text: """
    To add yours, colleague, client or friend email address go to "*Settings*" (under your account name dropdown). Under "*Contacts*" area click on "*Add New Email*" type-in or paste email address you want to add, then select preferred language, this language will be used for all notifications.

    Next, follow a link in received letter from Ostr.io, to confirm email address. After email address is confirmed, this new contact can be used for notifications.
    """

  addPhone:
    title: 'Add and verify Phone Number'
    text: """
    To add yours, colleague, client or friend phone number go to "*Settings*" (under your account name dropdown). Under "*Contacts*" area switch to "*Phones*", then click on "*Add New Phone*" and type-in or paste phone number beginning with `+` in [international format](https://en.wikipedia.org/wiki/E.123). After - select preferred language, this language will be used for all notifications.

    To confirm phone number, you have two options:

    - __Via short code__: Clicking on this option will send a short code to phone number you are adding, and asked to type it in;
    - __Via link__: Clicking on this option will send a link. This option is useful if you have a smart-phone or you're adding phone of person who is not near you, so there is no need to call or send short-code.

    After phone number is successfully confirmed, this new contact can be used for notifications.
    """

  servers:
    title: 'Add server'
    text: """
    To add server or domain go to "*Servers*" (top navigation bar) and click on big yellow button "*Add Server*". Next type-in full valid URL address to your server with scheme, `http` or `https`. Later you can set individual scheme for each endpoint. As *address* you can use any public IPv4-address or domain name. If your web-server listens port different from `80`, you can set port after colon, like: `scheme://address:port`.

    Next, you have to confirm server ownership, for this purpose you have next options:

    - __Meta-Tag__ - Classic meta-tag added into head section of your main (index) page or to all pages. Useful when you have access only to server's file system;
    - __File__ - Drop-in file in a root path of your website, file's content must start with `Ostr.io-domain: `. Useful when you have access only to FTP;
    - __DNS-record__ - Add TXT record to your primary domain name (`@`). Record must start with `Ostr.io-domain: `. Useful when you have access only to DNS records management;
    - __Response Header__ - Add custom response header. Header key must be `x-Ostr.io-domain`. Useful when you have access only to web- or proxy-server.

    More info with code examples can be found on confirmation page after adding server. Do not remove confirmation details after server is confirmed, this will cause server cancellation, unless confirmation details added back.
    """
    
  endpoints:
    title: 'Add endpoints'
    text: """
    After you're have added and successfully confirmed the server/domain. Click on big yellow button "*Add Endpoint*" and enter a valid URI, which has `200` response code. To add authentication parameters click on "*Add auth parameters*" and type-in *user* and *password* for this endpoint. You have a three options: `http`, `https` and `ssh`. The first two has next features:

    - __Avoid cached results__ - To avoid cached results you may use special keyword `{{rand}}` (with double curly braces). This placeholder will be replaced with random string. Example: `/path?purge={{rand}}`;
    - __Fetch as a bot__ - If your application is depend on hashbang `#!`, we suggest to use next query: `/path?_escaped_fragment_=`;
    - __Protected Endpoints__ - Ostr.io supports user/password-protected endpoints, and recommend it, especially for *custom data*;
    - __Content CRC__ - Get notifications about all content changes. This is useful when you need to protect sensitive public data for you business. For example page with your official contacts, or license;
    - __Response Time__ - Analysis and Monitoring. Get notification about delayed and long-running responses from your server;
    - __Response Code__ - Get notified about changes in endpoint's response code;
    - __Uptime__ - Analysis and monitoring. Get notification about downtime of your server;
    - __Custom data__ - Build charts for monitoring and further analysis on top of your custom data, we accept `JSON` and `XML`, read more below.

    Third option - `ssh`, allows to collect data about server-health, connectivity and availability via SSH, read more about SSH-endpoint features and how to setup - below.
    """

  customData:
    title: 'Custom endpoints'
    text: """
    Custom endpoints is targeted to receive and analyze any structured (`JSON` or `XML`) data, which meets our rules (see below). You're able to return any necessary data for your needs. It may be data from your DB, APIs or any other. As it important - we support `HTTPS` protocol and user/password-protected endpoints and highly recommend it for sensitive, non-public data. It is useful for cases of:

    - Visitors analytics;
    - Visitors and users goals;
    - Application analysis;
    - Server analysis;
    - Advertisement campaign analysis and goals;
    - many more.
    """

  json:
    title: 'Custom endpoint: JSON'
    text: """
    To monitor and analyze custom data returned from your endpoint Ostr.io offers support for JSON-data. Before adding JSON-endpoint in Ostr.io - this endpoint has to be up and running on your end. Endpoint may be user/password-protected (recommended).

    __Strict rules:__

    - Content-type: `application/json`;
    - Max properties: `100`;
    - Max nested object properties: `32`;
    - Max property name length: `24`;
    - Property value: `Number`/`Object`;
    - Nested property value: `Number`;
    - Encoding: `utf8`.

    __JSON example:__
    ```json
    {
      "users": {
        "total":9083,
        "active":2436,
        "online":268
      },
      "instances":5,
      "hits":{
        "total":823090349,
        "minute":54,
        "hour":2861,
        "day":54380
      },
      "orders":{
        "total":79805,
        "minute":4,
        "hour":327,
        "day":5380
      }
    }
    ```

    Data from example above will be parsed into 4 charts, nested objects will be parsed into graphs with multiple lines. The main property of nested objects is `total`.

    "*Main*" properties of nested objects should have next keys (descending priority order):

    - `free`;
    - `total`;
    - `used`;
    - `use`.

    If objects has more than one "*main*" property keys, more prioritized will be selected. If none of keys is defined as "*main*", the additional property represented as sum of all properties will be added.

    Notifications can be set only for *Number* properties or for "*main*" properties of nested objects.

    In a case having `-1` and/or `0` as value of collected data (you will see it on charts) it indicates:

    - Downtime;
    - Value can't be collected.

    Main reason for `-1` and/or `0` values to indicate problems and attract your attention.
    """

  xml:
    title: 'Custom endpoint: XML'
    text: """
    To monitor and analyze custom data returned from your endpoint we offer support for XML-data. Before adding XML-endpoint in Ostr.io - this endpoint has to be up and running on your end. Endpoint may be user/password-protected (recommended).

    __Strict rules:__

    - Content-type: `text/xml`/`application/xml`;
    - Root key name: `data`;
    - Max properties: `100`;
    - Max nested object properties: `32`;
    - Max property name length: `24`;
    - Property value: `Number`/`Object`;
    - Nested property value: `Number`;
    - Encoding: `utf8`.

    __XML example:__
    ```xml
    <data>
      <users>
        <total>144</total>
        <active>67</active>
        <online>104</online>
      </users>
      <instances>1354</instances>
      <hits>
        <total>14345344</total>
        <minute>67</minute>
        <hour>1454</hour>
        <day>10454</day>
      </hits>
      <orders>
        <total>4431</total>
        <minute>2</minute>
        <hour>80</hour>
        <day>2390</day>
      </orders>
    </data>
    ```

    Data from example above will be parsed into 4 charts, nested objects will be parsed into graphs with multiple lines. The main property of nested objects is `total`.

    "*Main*" properties of nested objects should have next keys (descending priority order):

    - `free`;
    - `total`;
    - `used`;
    - `use`.

    If objects has more than one "*main*" property keys, more prioritized will be selected. If none of keys is defined as "*main*", the additional property represented as sum of all properties will be added.

    Notifications can be set only for *Number* properties or for "*main*" properties of nested objects.

    In a case having `-1` and/or `0` as value of collected data (you will see it on charts) it indicates:

    - Downtime;
    - Value can't be collected.

    Main reason for `-1` and/or `0` values to indicate problems and attract your attention.
    """

  ssh:
    title: 'SSH endpoint'
    text: """
    __Note: currently SSH-endpoints targeted for servers running Linux or Mac OS X.__ Requirements for monitoring your server via SSH-endpoint:

    - To collect data we recommend to create limited user with rights to execute __only__ next commands, if user has no such rights - data will not be collected, but monitoring of SSH connectivity and server availability still will be working:
      - `top`;
      - `grep`;
      - `tail`;
      - `awk`;
      - `uptime`;
      - `df`;
      - and read `tail /proc/uptime`.
    - Login and password for user, which is allowed to connect via SSH.


    If user has rights to run list of commands above, next data will be collected:

    - Server uptime (from `/proc/uptime`);
    - Sever messages (all messages displayed to users when they login);
    - Quantity of logged-in users;
    - Server average load;
    - Amount of running tasks (from `top`);
    - CPU load (from `top`) `idle`/`user`/`system`/`total`/etc.;
    - Memory stats: `used`/`free`/`buffers`;
    - SWAP stats: `used`/`free`/`cached`/`total`;
    - Usage of all disks in system: `used%`/`free`/etc.

    With and without permissions to run commands, next data will be collected:

    - Connectivity and server availability;
    - Server response time;
    - Uptime for month / 3 days / 12 hours.

    For each collected data you can set notifications to be sent to any email or phone from verified contacts. Monitoring via SSH is very useful for double durability. While server is down, build-in server's tools for notifying administrator about high server usage, low HDD space, fraud logins and connectivity issues may not work. In mind of double durability our servers will check your server and it's health data, from outside of your infrastructure, independently. It's better to receive notifications from multiple sources, than not receiving no notification.

    In a case having `-1` and/or `0` as value of collected data (you will see it on charts) it indicates:

    - Downtime;
    - Value can't be collected.

    Main reason for `-1` and/or `0` values to indicate problems and attract your attention.
    """

  sshLoginSMS:
    title: 'Receive SMS about all SSH logins'
    text: """
    1. Go to SSH-endpoint;
    2. Find row with "*users*" field;
    3. Click on "*ON*" in "*Get Notified*" column (button become green);
    4. Click in "*Gear*" icon;
    5. Under expanded area obtain a from with "*From*" and "*To*" inputs;
    6. Fill only "*Form*" field with `0`, then click "*Save*" button, and wait until it says "*Saved*";
    7. In a table below select contacts, which need to be notified about all SSH logins;
    8. Close this area by clicking again on "*Gear*" icon (blue).

    From now all selected contacts will receive notifications about new SSH-logins.
    """