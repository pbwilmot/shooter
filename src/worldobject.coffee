class WorldObject
  location : new Vector3(0,0,0)
  look: 0
  pitch: 0
  yaw: 0
  fresh_look: false
  constructor: (x=0,y=0,z=0)->
    @location = new Vector3(x,y,z)
    @look = new Vector3(x,y,z)
  setLocation: (x=0,y=0,z=0)->
    @location = new Vector3(x,y,z)
  setPitch: (p) ->
    @pitch = p
    @fresh_look = false
  setYaw: (y) ->
    @yaw = y
    @fresh_look = false
  getPitch: ->
    return @pitch
  getYaw: ->
    return @yaw
  getLocation: ->
    return @location
  getLook: ->
    if not @fresh_look
      @look = new Vector3(Math.sin((@yaw*Math.PI)/180)*Math.cos((@pitch*Math.PI)/180), -Math.sin((@pitch*Math.PI)/180), -Math.cos((@yaw*Math.PI)/180)*Math.cos((@pitch*Math.PI)/180))
      @look.normalize()
      @fresh_look = true
    return @look
  getHorizontalLook: ->
    vlook = @getLook()
    hlook = new Vector2(vlook.x, vlook.z)
    hlook.normalize()
    return hlook
  synchronizeWithWorldObject: (obj)->
    @location = obj.getLocation()