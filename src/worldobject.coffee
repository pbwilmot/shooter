###
***WorldObject***
The constructor for world object takes one of:
  *Nothing; indicating a default location of (0,0,0)
  *A Vector3 indicating the default location
  *an x,y, and, z indicating the default location
###
class WorldObject
  location: new Vector3(0,0,0)
  
  constructor: (x=0,y=0,z=0) ->
    @setLocation(x,y,z)
    
  setLocation: (x,y,z) ->
    if x instanceof Vector3
      @location = x
    else if x? and y? and z?
      @location.x = x
      @location.y = y 
      @location.z = z
      
  getLocation: ->
    return @location
    
  synchronizeWithWorldObject: (obj) ->
    if obj.location instanceof Vector3
      @location = obj.location