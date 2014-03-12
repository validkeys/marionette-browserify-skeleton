## GLOBALS
window.$               = require('jquery')
window._               = require('underscore')
window.Backbone        = require('backbone')
window.Marionette      = require('backbone.marionette')

## jQuery Selector
window.Marionette.$ = Backbone.$ = $


## Game Time
$((() ->

  window.App = App = new Marionette.Application()

  App.addInitializer (options) ->
    console.log "app initialized!"

  App.start()

))

# alert Marionette
console.log window.Marionette



# App = new Marionette.Application()

# App.addInitializer (options) ->
#   console.log('initialised app')

# App.start()
