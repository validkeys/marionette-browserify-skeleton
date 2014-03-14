## GLOBALS
window.$               = require('jquery')
window._               = require('underscore')
window.Backbone        = require('backbone')
window.Marionette      = require('backbone.marionette')

## jQuery Selector
window.Marionette.$ = Backbone.$ = $


Application = require('./lib/application/base')

## Game Time
$((() ->

  window.App = App = new Application()

))



# App = new Marionette.Application()

# App.addInitializer (options) ->
#   console.log('initialised app')

# App.start()
