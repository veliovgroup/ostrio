_app.i18n.en.forgot = 
  title: 'Password recovery'
  button: 'Recover password'
  restoreLink: -> "<a href=\"/#{@currentLocale.get()}/forgot\">Forgot your password</a>?"
  success: 'Ostr.io have sent you confirmation email, please check your inbox.'
  errors:
    '403': 'Verification link is already sent, please check your email. Or try again in few hours.'
  annotation:
    email: 'Enter your email-address, Ostr.io will send you a letter with further instructions'
  check:
    error: 'Already restored, token outdated. If you believe there is an error, please try again.'
    success: 'Please, check you email inbox for further instructions.'