class vec2
	this.length = (x, y) ->
		return Math.sqrt(x*x+y*y)
	this.normalize = (x, y) ->
		len = Math.sqrt(x*x+y*y)
		return [x/len, y/len]
