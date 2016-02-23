_app.i18n.en.login = 
  title: 'Log In'
  button: 'Log In'
  errors:
    '400':
      email: '<b>Email</b> address is malformed'
      password: '<b>Password</b> must be 6 symbols at least'
    '404': -> "User with email \"<em>{{email}}</em>\" is not yet registered. Would you like to <a href=\"/#{@currentLocale.get()}/signup\">sign up</a>?"
    '403': 'Wrong email and/or password is provided'
    '401': 'Sorry, your account is blocked. Believe it\'s a mistake? Contact us.'