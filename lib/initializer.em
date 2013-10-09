Em.onLoad 'Ember.Application', (application) ->
  application.initializer
    name: 'ember-auth-module-epf'
    after: 'ember-auth'

    initialize: (container, app) ->
      app.register 'authModule:epf', Em.Auth.EpfAuthModule
