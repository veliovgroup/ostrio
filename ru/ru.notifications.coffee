_app.i18n.ru.notifications = 
  title: 'Центр уведомлений'
  showChanges: 'Показать изменения'
  noNotifications: 'У Вас нет уведомлений'
  beta:
    feedback:
      received:
        subject: 'Boris: Спасибо за Ваш отзыв!'
        message: '<p>Благодарим за Ваш отзыв, нам очень важно Ваше участие. Мы можем связаться с Вами в дальнейшем. если потребуется дополнительная информация.</p><p>В случае, если Ваше сообщение окажет положительное влияние на развитие проекта - мы пополним Ваш аккаунт экстра-бонусом. Спасибо еще раз!</p>'
  sms:
    lowCredit:
      title: 'Низкий остаток баланса'
      subject: email: '<strong>Boris Guard:</strong> Низкий остаток баланса для отправки СМС'
      message: email: '<p>Остатка баланса хватит не более чем на {{smss}} СМС. Для того что бы получать СМС от Boris\'а - пополните Ваш баланс.</p>'

  endpoint: 
    in:
      title: 'Уведомление от мониторинга по: "{{property}}"'
      subject: email: '<strong>Boris Guard:</strong> Точка мониторинга {{address}}, предупреждение по "{{property}}"'
      message: 
        email: '<p>Уведомление по точке мониторинга: "{{address}}"</p><p>Зарегистрировано аномальное значение для <strong>{{property}}</strong>. Текущее значение: <strong>{{after}}</strong></p>'
        phone: 'Точка мониторинга: {{address}}. Аномальное значение "{{property}}" - {{after}}'
    out:
      title: 'Уведомление от мониторинга: "{{property}}" вернулось в нормальное значение'
      subject: email: '<strong>Boris Guard</strong>. Точка мониторинга {{address}}. "{{property}}" - вернулось в нормальное значение'
      message: 
        email: '<p>Уведомление по точке мониторинга: "{{address}}"</p><p>По данным мониторинга - <strong>{{property}}</strong> вернулось в нормальное значение. Текущее значение: <strong>{{after}}</strong></p>'
        phone: 'Точка мониторинга: {{address}}. "{{property}}" вернулось в нормальное значение: {{after}}'
    change:
      title: 'Уведомление от мониторинга, изменения в "{{property}}"'
      subject: email: '<strong>Boris Guard</strong>. Точка мониторинга {{address}}, значение "{{property}}" изменено'
      message: 
        email: '<p>Уведомление по точке мониторинга: "{{address}}"</p><p>Зарегистрировано изменение значения "<strong>{{property}}</strong>". Более подробную информацию смотрите в уведомлениях Вашего аккаунта.</p>'
        phone: 'Точка мониторинга: {{address}}. Значение "{{property}}" изменено'
  server:
    endOfPaid:
      title: 'Окончание платной подписки'
      subject: email: '<strong>Boris Guard:</strong> окончание платной подписки для {{address}}'
      message: email: '<p>Платная подписка закончилась для <strong>{{address}}</strong>. Что бы получать услуги сервиса в полном объеме - пожалуйста пополните Ваш аккаунт.</p>'
    serverWillBeRenewed:
      title: 'Сервер {{address}} будет продлен {{expireAt}}'
      subject: email: '<strong>Boris Guard:</strong> "Paid" план будет продлен {{expireAt}}'
      message: email: '<p>План "Paid" будет продлен {{expireAt}} для сервера <strong>{{address}}</strong>.</p>'
    lowCreditForServer:
      title: 'Сервер {{address}} будет переключен на "free" план {{expireAt}}'
      subject: email: '<strong>Boris Guard:</strong> План "Paid" заканчивается {{expireAt}}'
      message: email: '<p>План "Paid" закончится {{expireAt}} для сервера <strong>{{address}}</strong>. Что бы оставить сервер на "Paid" плане, пополните Ваш аккаунт необходимой суммой.</p>'
    paidRenewed:
      title: 'Продление платной подписки'
      subject: email: '<strong>Boris Guard:</strong> Платная подписка продлена для {{address}}'
      message: email: '<p>Платная подписка продлена для <strong>{{address}}</strong> на один месяц.</p>'
    lowCreditNextMonth:
      title: 'Малый остаток средств'
      subject: email: '<strong>Boris Guard:</strong> Малый остаток средств'
      message: email: '<p>На вашем балансе не достаточно средств для продления платной подписки на следующий месяц. Пожалуйста пополните Ваш аккаунт во избежание прерывания обслуживания.</p>'
    DNS:
      changed:
        title: 'DNS записи изменены'
        title: 'Основной IP(s) изменен'
        subject:
          email: '<strong>Boris Guard:</strong> Изменены DNS-записи для {{address}}'
        message: 
          email: '<p>Следующие типы DNS-записей были изменены: {{changed}}.</p><p>На сервере: <strong>{{address}}</strong></p>'
          phone: 'Сервер: {{address}}. Изменены DNS-записи: {{changed}}'
    IP:
      changed:
        title: 'Основной IP(s) изменен'
        subject: email: '<strong>Boris Guard:</strong> Сменился IP-адрес для {{address}}'
        message: 
          email: '<p>Сервер: <strong>{{address}}</strong></p><p>Новый IP: <strong>{{after}}</strong></p><p>Старый IP: <strong>{{before}}</strong></p>'
          phone: 'Сервер: {{address}}. Сменился IP-адрес, новый адрес: {{after}}'
    whois:
      changed:
        title: 'Whois запись изменена'
        subject: email: '<strong>Boris Guard:</strong> Информация whois изменена для {{address}}'
        message: 
          email: '<p>Сервер: <strong>{{address}}</strong></p><p>Новые данные в whois: <pre>{{after}}</pre></p>'
          phone: 'Сервер: {{address}}. Информация whois изменена'
    ssl:
      changed:
        title: 'SSL сертификат изменен'
        subject: email: '<strong>Boris Guard:</strong> SSL сертификат изменен для {{address}}'
        message: 
          email: '<p>Сервер: <strong>{{address}}</strong></p><p>SSL сертификат изменен, смотрите более подробную информацию в Вашем аккаунте.</p>'
          phone: 'Сервер: {{address}}. SSL сертификат изменен'
      expiresSoon:
        title: 'Срок действия SSL сертификата подходит к концу'
        subject: email: '<strong>Boris Guard:</strong> {{address}} срок действия SSL, до - {{expiresAt}}'
        message: 
            email: '<p>Сервер: <strong>{{address}}</strong> срок действия текущего SSL сертификата, до - {{expiresAt}}.</p>'
            phone: 'Сервер: {{address}}. Срок действия SSL сертификата подходит к концу, действителен до - {{expiresAt}}'
    domainExpires:
      title: 'Истекает срок регистрации домена'
      subject: email: '<strong>Boris Guard:</strong> {{address}} истечет {{expiresAt}}'
      message: 
          email: '<p>Домен: <strong>{{address}}</strong>, срок регистрации закончится - {{expiresAt}}.</p>'
          phone: 'Домен: {{address}}. Срок регистрации закончится {{expiresAt}}'
    verified:
      title: 'Домен успешно подтвержден'
      subject: email: '<strong>Boris Guard:</strong> {{address}} добавлен'
      message: email: '<p>Сервер <strong>{{address}}</strong> успешно подтвержден и добавлен в Ваш аккаунт.</p>'
    unverified:
      title: 'Код подтверждения не обнаружен'
      subject: email: '<strong>Boris Guard:</strong> {{address}} код подтверждения не обнаружен'
      message: email: '<p>Boris более не наблюдает за сервером <strong>{{address}}</strong>.</p><p>Код подтверждения был удален или изменен.</p><p>Пожалуйста подтвердите сервер повторно любым из удобных способов как можно скорее.</p>'
  user:
    signup: 
      subject: email: 'Вы зарегистрировались на <strong>Boris Guard</strong>'
      message: email: '<p>Спасибо за регистрацию, Вы получили данное письмо как подтверждение успешной регистрации.</p><p>Ваш логин: <strong>{{login}}</strong></p><p>Ваш пароль: <strong>{{password}}</strong></p><p><em>Пожалуйста не забудьте подтвердить данный email-адрес, перейдя по ссылке из следующего письма, спасибо.</em></p>'
    confirmEmail:
      subject: email: '<strong>Boris Guard:</strong> Подтвердите email-адрес'
      message: email: "<p>Пожалуйста перейдите по <a href=\"{{link}}\">этой ссылке</a> для подтверждения этого email-адреса</p><p><small>Если ссылка выше не работает, скопируйте и вставьте ссылку в браузер: {{link}}</small></p>"
    forgot:
      confirm:
        subject: email: '<strong>Boris Guard:</strong> Подтверждение смены пароля'
        message: email: '<p>Кто-то инициировал процесс восстановления пароля. Если это были Вы - пройдите по ссылке ниже, в противном случае - проигнорируйте данное письмо.</p><p>Для восстановления пароля пройдите <a href="{{link}}">по данной ссылке/a></p><p><small>Если ссылка выше не активна, скопируйте и перейдите по адресу: <code>{{link}}</code></small></p>'
      recovery:
        subject: email: '<strong>Boris Guard:</strong> Восстановление пароля'
        message: email: '<p>Ваш пароль был сброшен.</p><p>Ваш логин: <strong>{{username}}</strong></p><p>Ваш новый пароль: <strong>{{password}}</strong></p>'