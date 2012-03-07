class LookingObject extends WorldObject
  pitch: 0
  yaw: 0
  fresh_look: false
  look: new Vector3(0,0,0)
  
  constructor: (x=0,y=0,z=0) ->
    super(x,y,z)
    
  setLook: (x,y,z) ->
    if x instanceof Vector3
      @look = x
    else if x? and y? and z?
      @look.x = x
      @look.y = y 
      @look.z = z
      
  addToPitch: (p) ->
    @pitch += p
    if @pitch > 89.9
      @pitch = 89.9
    else if @pitch < -89.9
      @pitch = 89.9
    @fresh_look = false
    
  addToYaw: (y) ->
    @yaw += y + 360
    @yaw %= 360
    @fresh_look = false
    
  getPitch: ->
    return @pitch
    
  getYaw: ->
    return @yaw
    
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
    
  synchronizeWithLookingObject: (obj)->
    if obj.look instanceof Vector3
      @look = obj.look
      @synchronizeWithWorldObject(obj)