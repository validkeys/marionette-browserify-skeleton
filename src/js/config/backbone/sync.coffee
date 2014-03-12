do (Backbone) ->
  _sync = Backbone.sync
  Backbone.sync = (method, entity, options = {}) ->
    # console.warn "SYNC:", arguments
    sync = _sync(method, entity, options)
    if !entity._fetch and method is "read"
      entity._fetch = sync
