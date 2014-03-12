Array::insertAt = (index, item) ->
	@splice(index, 0, item)
	@

String.prototype.capitalize = ->
    @charAt(0).toUpperCase() + @slice(1)
