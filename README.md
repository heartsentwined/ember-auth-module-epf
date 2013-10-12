# epf integration module for ember-auth

[![Build Status](https://secure.travis-ci.org/heartsentwined/ember-auth-module-epf.png)](http://travis-ci.org/heartsentwined/ember-auth-module-epf)
[![Gem Version](https://badge.fury.io/rb/ember-auth-module-epf-source.png)](http://badge.fury.io/rb/ember-auth-module-epf-source)
[![NPM version](https://badge.fury.io/js/ember-auth-module-epf.png)](http://badge.fury.io/js/ember-auth-module-epf)

1. injects signed in session data (if any) to all epf server requests
2. optional: auto-loads an epf user model upon sign in

## Config

```coffeescript
App.Auth = Em.Auth.extend
  modules: ['epf']

  epf:
    # [string|false] enable auto-loading user model by setting this to a
    #   model type, as in session.load(userModel, id);
    #   or false to disable auto-loading user model
    userModel: false
```

## Usage

```coffeescript
@auth.get 'user' # access the auto-loaded user model
```
