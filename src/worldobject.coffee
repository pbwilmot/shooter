class WorldObject
  location : new Vector3(0,0,0)
  look: 0
  pitch: 0
  yaw: 0
  fresh_look: false
  constructor: (x=0,y=0,z=0)->
    this.location = new Vector3(x,y,z)
    this.look = new Vector3(x,y,z)
  setLocation: (x=0,y=0,z=0)->
    this.location = new Vector3(x,y,z)
  setPitch: (p) ->
    this.pitch = p
    this.fresh_look = false
  setYaw: (y) ->
    this.yaw = y
    this.fresh_look = false
  getPitch: ->
    return this.pitch
  getYaw: ->
    return this.yaw
  getLocation: ->
    return this.location
  getLook: ->
    if not this.fresh_look
      this.look = new Vector3(Math.sin((this.yaw*Math.PI)/180)*Math.cos((this.pitch*Math.PI)/180), -Math.sin((this.pitch*Math.PI)/180), -Math.cos((this.yaw*Math.PI)/180)*Math.cos((this.pitch*Math.PI)/180))
      this.look.normalize()
      this.fresh_look = true
    return this.look
  getHorizontalLook: ->
    vlook = this.getLook()
    hlook = new Vector2(vlook.x, vlook.z)
    hlook.normalize()
    return hlook
  synchronizeWithWorldObject: (obj)->
    this.location = obj.getLocation()