class Camera
  pitch: 0
  yaw: 0
  look: vec3.create()
  setPitch: (y) ->
    this.pitch = y
  setYaw: (x) ->
    this.yaw = x
  getPitch: ->
    this.pitch
  getYaw: ->
    this.yaw
  updateLook: ->
    vec3.set([Math.sin((this.yaw*Math.PI)/180)*Math.cos((this.pitch*Math.PI)/180), -Math.sin((this.pitch*Math.PI)/180), -Math.cos((this.yaw*Math.PI)/180)*Math.cos((this.pitch*Math.PI)/180)], this.look)
    vec3.normalize(this.look)
  getLook: ->
    this.look
