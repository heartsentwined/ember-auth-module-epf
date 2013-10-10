Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.module.epf'
    before: 'ember-auth-load'

    initialize: (container, app) ->
      app.register 'authModule:epf', Em.Auth.EpfAuthModule

Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth.module.epf.injection'
    after: 'ember-auth.module.epf'

    initialize: (container, app) ->
      app.inject 'authModule:epf', 'session', 'session:main'
