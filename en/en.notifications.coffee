_app.i18n.en.notifications = 
  title: 'Notification center'
  showChanges: 'Show Changes'
  noNotifications: 'You have no notifications'
  beta:
    feedback:
      received:
        subject: 'Thank you for your feedback!'
        message: '<p>Thank you for your feedback, we are really appreciate for your participating. We may contact you if any additional information is needed.</p><p>If this report will be defined as major we will contact you to add extra-bonus credit to your account. Thank you!</p>'
  sms:
    lowCredit:
      title: 'Low credit'
      subject: email: 'Low credit for SMS'
      message: email: '<p>You have credit for not more than {{smss}} SMS. To keep receiving SMS form ostr.io - please add more credit.</p>'

  endpoint: 
    in:
      title: 'Endpoint monitoring warning: "{{property}}"'
      subject: email: 'Endpoint {{address}} warning for "{{property}}"'
      message: 
        email: '<p>Warning for endpoint: "{{address}}"</p><p>Our monitoring registered abnormal values for <strong>{{property}}</strong>. Current value: <strong>{{after}}</strong></p>'
        phone: 'Endpoint: {{address}}. Abnormal "{{property}}" value: {{after}}'
    out:
      title: 'Endpoint monitoring: "{{property}}" is went to normal value'
      subject: email: 'Endpoint {{address}} value "{{property}}", is went to normal state'
      message: 
        email: '<p>Warning for endpoint: "{{address}}"</p><p>Our monitoring registered <strong>{{property}}</strong> is went to normal state. Current value: <strong>{{after}}</strong></p>'
        phone: 'Endpoint: {{address}}. "{{property}}" is went to normal state, value: {{after}}'
    change:
      title: 'Endpoint monitoring: "{{property}}" is changed'
      subject: email: 'Endpoint {{address}} value "{{property}}" is changed'
      message: 
        email: '<p>Warning for endpoint: "{{address}}"</p><p>Our monitoring registered <strong>{{property}}</strong> is changed. Please go to your profile for more info.</p>'
        phone: 'Endpoint: {{address}}. "{{property}}" is changed'
  server:
    endOfPaid:
      title: 'End of paid subscription'
      subject: email: '"Paid" subscription is ended for {{address}}'
      message: email: '<p>Paid subscription is ended for <strong>{{address}}</strong>, to keep using "Paid" plan, please add more credit.</p>'
    serverWillBeRenewed:
      title: 'Server {{address}} will be renewed {{expireAt}}'
      subject: email: '"Paid" subscription will be renewed {{expireAt}}'
      message: email: '<p>Hi there! Just want to let you know - "Paid" subscription will renewed {{expireAt}} for <strong>{{address}}</strong>.</p>'
    lowCreditForServer:
      title: 'Server {{address}} will be switched to "free" plan {{expireAt}}'
      subject: email: '"Paid" subscription will end {{expireAt}}'
      message: email: '<p>"Paid" subscription will end {{expireAt}} for <strong>{{address}}</strong>. To keep using "Paid" plan, please add more credit.</p>'
    paidRenewed:
      title: 'Server is renewed'
      subject: email: '"Paid" subscription is renewed for {{address}}'
      message: email: '<p>Paid subscription is renewed for <strong>{{address}}</strong> for one more month.</p>'
    lowCreditNextMonth:
      title: 'Low credit'
      subject: email: 'Low credit to renew server'
      message: email: '<p>You have not enough credit to renew server for next month. Please add more credit to avoid service interruption.</p>'
    DNS:
      changed:
        title: 'DNS records is changed'
        subject: email: 'DNS records is changed for {{address}}'
        message: 
          email: '<p>Next DNS records was changed: {{changed}}.</p><p>Server: <strong>{{address}}</strong></p>'
          phone: 'Server: {{address}}. DNS records is changed: {{changed}}'
    IP:
      changed:
        title: 'Primary IP(s) is changed'
        subject: email: 'IP-address is changed for {{address}}'
        message: 
          email: '<p>Server: <strong>{{address}}</strong></p><p>New IP(s): <strong>{{after}}</strong></p><p>Old IP(s): <strong>{{before}}</strong></p>'
          phone: 'Server: {{address}}. IP-address is changed, new IP(s): {{after}}'
    whois:
      changed:
        title: 'Whois information is changed'
        subject: email: 'Whois is changed for {{address}}'
        message: 
          email: '<p>Server: <strong>{{address}}</strong></p><p>New whois: <pre>{{after}}</pre>.</p>'
          phone: 'Server: {{address}}. Whois information is changed'
    ssl:
      changed:
        title: 'SSL certificate is changed'
        subject: email: 'SSL certificate is changed for {{address}}'
        message: 
          email: '<p>Server: <strong>{{address}}</strong></p><p>SSL certificate is changed, please found more information in your account.</p>'
          phone: 'Server: {{address}}. SSL certificate is changed'
      expiresSoon:
        title: 'SSL certificate expires soon'
        subject: email: '{{address}} SSL certificate will expire at {{expiresAt}}'
        message: 
            email: '<p>Server: <strong>{{address}}</strong> current SSL certificate will expire at {{expiresAt}}.</p>'
            phone: 'Server: {{address}}. Current SSL certificate will expire at {{expiresAt}}'
    domainExpires:
      title: 'Domain expires soon'
      subject: email: '{{address}} will expire at {{expiresAt}}'
      message: 
          email: '<p>Domain: <strong>{{address}}</strong> will expire at {{expiresAt}}.</p>'
          phone: 'Domain: {{address}}. Will expire at {{expiresAt}}'
    verified:
      title: 'Successfully confirmed'
      subject: email: '{{address}} is added'
      message: email: '<p>Server <strong>{{address}}</strong> is successfully confirmed and linked to your account.</p>'
    unverified:
      title: 'Verification code is not detected'
      subject: email: '{{address}} verification code is not detected'
      message: email: '<p>Server <strong>{{address}}</strong> is not watched anymore by ostr.io.</p><p>Please re-verify this server as soon as possible.</p>'
  user:
    signup: 
      subject: email: 'Welcome to <strong>ostr.io</strong> - Your personal Server Guard'
      message: email: '<p>Thank you for registration, you\'ve received this email as confirmation of successful registration.<p>Please, to confirm your email address follow <a href="{{link}}">this link</a>.<p><small>If link above doesn\'t work, copy and paste next URL to your browser: {{link}}.</small><p>For login, use next credentials:<ul><li>Login: <strong>{{login}}</strong><li>Password: <strong>{{password}}</strong></ul>'
    confirmEmail:
      subject: email: 'Confirm this email-address'
      message: email: '<p>Please confirm this email address by following <a href="{{link}}">this link</a></p><p><small>If link above doesn\'t work, copy and paste next URL to your browser: {{link}}</small></p>'
    forgot:
      confirm:
        subject: email: 'Confirm Password Recovery'
        message: email: '<p>Hello, someone requested password recovery for your account. If it was you, please - proceed by link below, if it wasn\'t you - ignore this email.</p><p>To proceed password recovery please follow this link: <a href="{{link}}">this link</a></p><p><small>If link above doesn\'t work, copy and paste next URL to your browser: <code>{{link}}</code></small></p>'
      recovery:
        subject: email: 'Password recovery'
        message: email: '<p>Your password was reset.</p><p>Your login is: <strong>{{username}}</strong></p><p>Your new password is: <strong>{{password}}</strong></p>'