class Vector2
  constructor:(@x=0,@y=0) ->
    if x instanceof Vector2
      @x=x.x
      @y=x.y
  # add ascalar
  add: (vec) ->
    if vec instanceof Vector2
      @x += vec.x
      @y += vec.y
    else
      @x += vec
      @y += vec
  
  #subtract a scalar
  sub: (vec) ->
    if vec instanceof Vector2
      @x -= vec.x
      @y -= vec.y
    else
      @x -= vec
      @y -= vec
  
  #multiply by a vector
  mult: (vec) ->
    if vec instanceof Vector2
      @x *= vec.x
      @y *= vec.y
    else
      @x *= vec
      @y *= vec
  
  #divide by a vector
  divide: (vec) ->
    if vec instanceof Vector2
      @x /= vec.x
      @y /= vec.y
    else
    @x /= vec
    @y /= vec
  
  #check equality
  equals: (vec) ->
    if @x is vec.x and @y is vec.y
      return true
  
  length: ->
	  return Math.sqrt(@lengthSquared())
  
  lengthSquared: ->
    return @x * @x + @y * @y
  
  dot: (vec) ->
    return @x * vec.x + @y * vec.y
  
  normalize: ->
    len = @length()
    @x /= len
    @y /= len

  unit: ->
    len = @length()
    return new Vector2(@x / len, @y / len)

  lerp: (a,b,fraction) ->
      return a.add(b.sub(a)).mult(fraction)

#TODO FIX ALL THIS
class Vector3
  constructor:(@x=0,@y=0, @z=0) ->
    if x instanceof Vector3
      @x=x.x
      @y=x.y
      @z=x.z
    
  # add allows you to add a scalar or a vector3.
  add: (vec) ->
    if vec instanceof Vector3
      @x += vec.x
      @y += vec.y
      @z += vec.z
    else
      @x += vec
      @y += vec
      @z += vec
  
  #subtract a scalar or a Vector3
  sub: (vec) ->
    if vec instanceof Vector3
      @x -= vec.x
      @y -= vec.y
      @z -= vec.z
    else
      @x -= vec
      @y -= vec
      @z -= vec
  
  #multiply by a vector
  mult: (vec) ->
    if vec instanceof Vector3
      @x *= vec.x
      @y *= vec.y
      @z *= vec.z
    else
      @x *= vec
      @y *= vec
      @z *= vec
  
  #divide by a vector
  divide: (vec) ->
    if vec instanceof Vector3
      @x /= vec.x
      @y /= vec.y
      @z /= vec.z
    else
      @x /= vec
      @y /= vec
      @z /= vec
  #check equality
  equals: (vec) ->
    if vec instanceof Vector3 and @x is vec.x and @y is vec.y and @z is vec.z
      return true
  
  length: ->
	  return Math.sqrt(@lengthSquared())
  
  lengthSquared: ->
    return @x * @x + @y * @y + @z * @z
  
  dot: (vec) ->
    return @x * vec.x + @y * vec.y + @z * vec.z
  cross: (vec) ->
    return new Vector3(@y * vec.z - @z * vec.y, @z * vec.x - @x * vec.z, @x * vec.y - @y * vec.x)
  normalize: ->
    len = @length()
    @x /= len
    @y /= len
    @z /= len
    return @

  unit: ->
    len = @length()
    return new Vector3(@x / len, @y / len, @z / len)

  lerp: (a,b,fraction) ->
      return a.add(b.sub(a)).mult(fraction)