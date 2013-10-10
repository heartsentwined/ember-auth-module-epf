Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.module.epf'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authModule:epf', Em.Auth.EpfAuthModule, \
      { singleton: true }
      app.inject 'authModule:epf', 'auth', 'auth:main'
      app.inject 'authModule:epf', 'session', 'session:main'

  application.initializer
    name: 'ember-auth.module.epf-load'
    after: 'ember-auth-load'

    initialize: (container, app) ->
      # force init() call wth an eager-load
      container.lookup 'authModule:epf'
