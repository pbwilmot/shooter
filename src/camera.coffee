class Camera
  pitch: 0
	yaw: 0
	look: 0
	fresh_look: false
	constructor: ->
		this.look = vec3.create()
	setPitch: (y) ->
		this.pitch = y
		this.fresh_look = false
	setYaw: (x) ->
		this.yaw = x
		this.fresh_look = false
	getPitch: ->
		return this.pitch
	getYaw: ->
		return this.yaw
	getLook: ->
		if not this.fresh_look
			vec3.set([Math.sin((this.yaw*Math.PI)/180)*Math.cos((this.pitch*Math.PI)/180), -Math.sin((this.pitch*Math.PI)/180), -Math.cos((this.yaw*Math.PI)/180)*Math.cos((this.pitch*Math.PI)/180)], this.look)
			vec3.normalize(this.look)
			this.fresh_look = true
		return this.look
	getHorizontalLook: ->
		vlook = this.getLook()
		return vec2.normalize(vlook[0], vlook[2])
