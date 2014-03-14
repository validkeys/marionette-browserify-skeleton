App.register "App.Controllers.Base", =>

  class App.Controllers.Base extends Marionette.Controller

    initialize: (options = {}) ->
      console.log "Hello!"
