_app.i18n.en.account = 
  notifications:
    question: 'Get notified'
    settings: 'Manage'
  endpoints:
    title: 'Endpoints'
  endpoint:
    title: 'Manage endpoint'
    noData: 'No endpoints added yet'
    remove: confirm: 'You\'re about to permanently remove "{{endpoint}}" endpoint, all data associated with this endpoint will be also removed. Please confirm.'
    ssh:
      port:
        annotation: 'Enter SSH port, we will connect to'
        ph: '2222'
      auth:
        login: annotation: 'Enter SSH login (username)'
        password: annotation: 'Enter SSH password'
      annotation: 'Remember always to use separate created user with very limited rights, please - read more in documentation.'
    add:
      title: 'Add Endpoint'
      ph: '/path/to/endpoint'
      annotation: 'Add URI-path (endpoint), which has <code class="success">200</code> response code'
      annotationPaid: 'Additionally endpoint might be password-protected and/or return any JSON-able or XML-structured data'
      errors: 
        '400': 'URI scheme mismatch!'
        '600': 'Wrong SSH-port provided!'
        '401': 'Wrong authentication data provided! Can not authenticate on server'
        '601': 'Authentication data is required for SSH'
        '403': 'Endpoint already added'
        '404': 'Endpoint is not reachable or has wrong response code'
        '604': 'Can\'t connect via SSH'
        '405': 'Endpoints limit reached'
        '500': 'Whoops, something went wrong. You may contact us, or just try again later'
      submit: 'Add Endpoint'
      auth:
        show: 'Add auth parameters'
        hide: 'Hide auth parameters'
        login: 
          ph: 'Login'
          annotation: 'User/Account name on server'
        password:
          ph: 'Password'
          annotation: 'Auth password'
      default:
        title: 'Add default "/" (root) endpoint'
  server:
    title: 'Manage server'
    data: 
      title: 'Server data'
      annotation: 'If any of information below will be changed, you will receive notification immediately'
      DNS: 
        title: 'DNS records'
      whois:
        title: '"Whois" information'
        notFound: '"Whois" information is not available'
      expiresAt:
        title: "Domain expiration"
        annotation: "Ostr.io will notify you one month, a week and a day before domain name will expire"
        notDetected: "Unfortunately, expiration date is not detected."
        ph: 'yyyy-mm-dd (1999-12-31)'
        addManually: 'Set expiration date manually'
        setManually: 'If expiration date is not correct, you can <a href="#" id="setExpiresAtMannually">set expiration date manually</a>'
        wrongDate: 'Date is malformed. Required format: yyyy-mm-dd (1999-12-31)'
      ssl:
        title: "SSL Certificate"
        valid_to:
          annotation: "Ostr.io will notify you about changes of fingerprint, and soon expiration.<br />One month, a week and a day before SSL certificate expiration date"
        notDetected: "Unfortunately, SSL certificate is not detected."
        incorrect: "Attention! Please check your SSL certificate setup. Your domain is not listed as a subject."
    plan:
      paid: 
        title: 'Subscribe to "Paid" plan'
        confirm: 'Please confirm switching server: {{address}} to "Paid" plan. You will be charged ${{price}} immediately for 31 days of usage. You may cancel "Paid" plan at any moment with credit refund for unused days.'
        errors:
          '403': 'Not enough credit to switch to "Paid" plan'
          '500': 'Whoops, something went wrong. Please contact us, and try again later.'
      free: 
        title: 'Change back to "Free" plan'
        confirm: 'Please confirm switching server: {{address}} to "Free" plan. You will be refunded for ${{refunds}} immediately.'
        errors:
          '500': 'Whoops, something went wrong. Please contact us, and try again later.'
      perMonth: 'monthly'
    search:
      contacts:
        ph: 'Search phone or email'
    tabs:
      endpoints: 'Endpoints'
      ip: 'IP(s)'
      whois: 'Whois'
      dns: 'DNS Records'
      badges: 'Badge'
      expiresAt: 'Domain Expiration Control'
      ssl: 'SSL Certificate CRC and Expiration Control'
    badges:
      title: 'Badges for your site'
      annotation: 'Let \'em know about your server protection!<br /> Add one of the badges below to your website, footer of every page is a good place for it'
  websites:
    noWebsites: 'You have no servers, yet'
    title: 'Servers'
    verify: 'Verify'
    notVerified: 'Ownership is not confirmed'
    verificationCode: 
      title: 'Verification code'
      show: 'Expand verification code'
      hide: 'Hide verification code'
    add:
      title: 'Add server'
      submit: 'Add'
      done: 'Finish'
      error: 
        '400': 'Address, domain or IP is mismatch, please make sure you type protocol (scheme: http or https)'
        '503': -> "Can't add more than #{__Constants.user.maxServersLength} servers per account"
        '403': 'Server already added'
        '404': 'Can\'t resolve address. If you\'re believe it is an error - contact us.'
      domain: 
        ph: 'https://domain.com'
        annotation: 'Full domain or IP-address with scheme, with optional port (scheme://domain:port)'
      confirm:
        annotation: 'Please confirm server ownership. It may be done via <em>meta-tag</em>, <em>DNS TXT record</em> or <em>file</em>.'
        metatag: 'Via meta-tag'
        dns: 'Via DNS TXT record'
        file: 'Via file'
        fileAn: 'Add/Create file "<span class="selectable">ostrio-domain.txt</span>" in root of your web-server, with next content:'
        headers: 'Via response header'
        headersAn: 'This is useful when you have access only to web-server, just set this custom header and you\'re good to go'
    remove:
      confirm: 'You\'re about to remove {{address}}, please confirm.'
    search:
      ph: 'Search by server address here'
      noResult: 'Search has no results'
  billing:
    title: 'Billing'
    credit:
      sign: 'Your balance (credit)'
      add: 'Add credit'
  settings: 
    title: 'Profile settings'
    contacts:
      title: 'Contacts'
    referral:
      title: 'Referral Program'
    passwd:
      title: 'Manage your password'
    locale: 'Contact locale'
    search:
      phone:
        ph: 'Search by phone number'
      email:
        ph: 'Search by email address'
    email:
      verify: 'Resend verification email'
      verified: 'Verified'
      primary:
        notVerified: 'Please verify your primary email-address to continue using our service, thank you.'
    remove: 
      confirm: 'You\'re about to permanently remove {{address}}. This contact will no longer receive notifications. Please confirm.'
    phone:
      verify:
        code: 'Via short code'
        link: 'Via link'
        annotation: 'We will send you SMS with short code or link'
        wait: 'You can re-send verification SMS in a few hours'
      code:
        ph: 'Short code received in SMS'
      link:
        success: 'Please follow link received on your smart-phone'
      price:
        annotation: 'Average price per 1 SMS, may vary from career and other conditions'
      noItems: 'No phones added yet'
    add:
      locale: 
        ph: 'Select preferred notifications language'
        annotation: 'Choose notifications language for this contact'
      email: 
        title: 'Add new email'
        ph:    'john.black@domain.com'
      phone:
        title: 'Add new phone'
        ph:    '+10002224455'
        annotation: 'Phone number might is used for SMS-notifications'
      # twitter:
      #   title: 'Twitter'
      #   ph:    '@username'
      #   annotation: 'Twitter account might be used for Direct Messages'
      #   verify: 'Follow @ServerGuard on twitter by {{address}} to confirm this notifications'
      submit: 'Add'
      errors:
        '400':
          any: 'Contact is malformed'
          email: 'Email address is malformed'
          # twitter: 'Twitter name is malformed. Note: twitter name must start from "@" sign'
          phone: 'Phone is malformed. Phone number must be in international format without spaces and any characters except "+" sign. Example: +10002224455'
        '401': 
          phone: 'Phone number was removed, to add same number again wait at least 24 hours.'
        '403':
          email: 'This email address is already added'
          # twitter: 'This Twitter account address is already added'
          phone: 'This phone number address is already added'
        '404':
          # twitter: 'User {{address}} not registered on Twitter, please make sure you\'ve typed it correctly'
          phone: 'Phone number is not exists or carrier is not supported, sorry'
        '405':
          email: -> "You can not add more than #{__Constants.user.maxEmailsLength} emails"
          phone: -> "You can not add more than #{__Constants.user.maxPhonesLength} phone numbers, or you adding and removing phones too often. Please wait at least 48 hours"

    referral:
      title: 'Invite friends and get extra credit'
      annotation: 'Invite your friends and colleagues by given them exact link below, and get extra $1 per each invited user. And user you\'ve invited also gets $1 of extra balance.'
    passwd:
      title: 'Change password'
      errors:
        '400': 'Password and Password confirmation mismatch!'
        '403': 'Wrong old (current) password!'
      success: 'New password successfully set'
      oldPassword: ph: 'Old (current) password'
      newPassword: ph: 'Enter new password'
      repeatNewPassword: ph: 'Repeat new password'