Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.module.epf'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authModule:epf', Em.Auth.EpfAuthModule, \
      { singleton: true }
      app.inject 'authModule:epf', 'auth', 'auth:main'
      app.inject 'authModule:epf', 'session', 'session:main'
