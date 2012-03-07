class Vector2
  constructor:(@x=0,@y=0) ->
    if x instanceof Vector2
      @x=x.x
      @y=x.y
  
  getX: ->
    return @x
  getY: ->
    return @y
  # add ascalar
  add: (vec) ->
    if vec instanceof Vector2
      @x += vec.getX()
      @y += vec.getY()
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
    if @x == vec.x and @y == vec.y
      return true
  
  length: ->
	  return Math.sqrt(@x * @x + @y * @y)
  
  lengthSquared: ->
    return @x * @x + @y * @y
  
  dot: (vec) ->
    return @x * vec.x + @y * vec.y
  
  normalize: ->
    len = @length
    @x /= len
    @y /= len

  unit: ->
    len = @length
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
  
  getX: ->
    return @x
  getY: ->
    return @y
  getZ: ->
    return @z
  # add ascalar
  add: (vec) ->
    if vec instanceof Vector3
      this.x += vec.getX()
      this.y += vec.getY()
    else
      @x += vec
      @y += vec
  
  #subtract a scalar
  sub: (vec) ->
    if typeof vec is "Vector2"
      @x -= vec.x
      @y -= vec.y
    else
      @x -= vec
      @y -= vec
  
  #multiply by a vector
  mult: (vec) ->
    if typeof vec is "Vector2"
      @x *= vec.x
      @y *= vec.y
    else
      @x *= vec
      @y *= vec
  
  #divide by a vector
  divide: (vec) ->
    if typeof vec is "Vec2"
      @x /= vec.x
      @y /= vec.y
    else
    @x /= vec
    @y /= vec
  
  #check equality
  equals: (vec) ->
    if @x == vec.x and @y == vec.y
      return true
  
  length: ->
	  return Math.sqrt(@x * @x + @y * @y)
  
  lengthSquared: ->
    return @x * @x + @y * @y
  
  dot: (vec) ->
    return @x * vec.x + @y * vec.y
  
  normalize: ->
    len = @length
    @x /= len
    @y /= len

  unit: ->
    len = @length
    return new Vector2(@x / len, @y / len)

  lerp: (a,b,fraction) ->
      return a.add(b.sub(a)).mult(fraction)


