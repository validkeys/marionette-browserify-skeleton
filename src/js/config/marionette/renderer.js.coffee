do (Marionette) ->
	_.extend Marionette.Renderer,
		
		lookups: ["js/apps/", "js/components/", "js/views/"]
		
		render: (template, data) ->
			return if template is false
			path = @getTemplate(template)
			throw "Template #{template} not found!" unless path
			path(data)
		
		getTemplate: (template) ->

			for path in [template, template.split("/").insertAt(-1, "templates").join("/")]
				return JST[path] if JST[path]