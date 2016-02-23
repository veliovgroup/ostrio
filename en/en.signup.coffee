_app.i18n.en.signup = 
  title: 'Sign Up'
  button: 'Sign Up'
  annotation:
    email: 'Enter your email, later you will use it as login'
    password: 'Enter new and strong password, 6 symbols at least'
    tnc: -> "By pressing \"Sign Up\" button below, you're agreeing to the <a target=\"_blank\" href=\"/#{@currentLocale.get()}/info/terms-and-conditions\">Terms of Service</a> and the <a target=\"_blank\" href=\"/#{@currentLocale.get()}/info/privacy-policy\">Privacy Policy</a>."
  success: 'You\'re successfully registered, please find further details in email we\'ve sent you'
  errors:
    '400':
      email: '<b>Email</b> address is malformed'
      password: '<b>Password</b> must be 6 symbols at least'
      recaptcha: 'Please check box below, to confirm you\'re human'
    '403': -> "User with email \"<em>{{email}}</em>\" already registered. Would you like to <a href=\"/#{@currentLocale.get()}/forgot\">recover your password?</a>"
    '401':
      recaptcha: 'You\'re not a human. If you believe here is some mistake - try later and/or from another device/network, or contact us.'
    '404': 'No user registered with email "<em>{{email}}</em>"'