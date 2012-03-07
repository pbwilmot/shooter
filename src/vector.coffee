class Vector2
  constructor:(@x=0,@y=0) ->
    if typeof @x is "Vector2"
      vec2=@x
      @x=vector.x
      @y=vector.y
  
  getX: ->
    return this.x
  getY: ->
    return this.y
  # add ascalar
  add: (vec) ->
    if typeof vec is "Vector2"
      this.x += vec.getX()
      this.y += vec.getY()
    else
      this.x += vec
      this.y += vec
  
  #subtract a scalar
  sub: (vec) ->
    if typeof vec is "Vector2"
      this.x -= vec.x
      this.y -= vec.y
    else
      this.x -= vec
      this.y -= vec
  
  #multiply by a vector
  mult: (vec) ->
    if typeof vec is "Vector2"
      this.x *= vec.x
      this.y *= vec.y
    else
      this.x *= vec
      this.y *= vec
  
  #divide by a vector
  divide: (vec) ->
    if typeof vec is "Vector2"
      this.x /= vec.x
      this.y /= vec.y
    else
    this.x /= vec
    this.y /= vec
  
  #check equality
  equals: (vec) ->
    if this.x == vec.x and this.y == vec.y
      return true
  
  length: ->
	  return Math.sqrt(this.x * this.x + this.y * this.y)
  
  lengthSquared: ->
    return this.x * this.x + this.y * this.y
  
  dot: (vec) ->
    return this.x * vec.x + this.y * vec.y
  
  normalize: ->
    len = this.length
    this.x /= len
    this.y /= len

  unit: ->
    len = this.length
    return new Vector2(this.x / len, this.y / len)

  lerp: (a,b,fraction) ->
      return a.add(b.sub(a)).mult(fraction)

#TODO FIX ALL THIS
class Vector3
  constructor:(@x=0,@y=0, @z=0) ->
    if typeof @x is "Vector3"
      Vector3=@x
      @x=vector.x
      @y=vector.y
      @z=vector.z
  
  getX: ->
    return this.x
  getY: ->
    return this.y
  getZ: ->
    return this.z
  # add ascalar
  add: (vec) ->
    if typeof vec is "Vector2"
      this.x += vec.getX()
      this.y += vec.getY()
    else
      this.x += vec
      this.y += vec
  
  #subtract a scalar
  sub: (vec) ->
    if typeof vec is "Vector2"
      this.x -= vec.x
      this.y -= vec.y
    else
      this.x -= vec
      this.y -= vec
  
  #multiply by a vector
  mult: (vec) ->
    if typeof vec is "Vector2"
      this.x *= vec.x
      this.y *= vec.y
    else
      this.x *= vec
      this.y *= vec
  
  #divide by a vector
  divide: (vec) ->
    if typeof vec is "Vec2"
      this.x /= vec.x
      this.y /= vec.y
    else
    this.x /= vec
    this.y /= vec
  
  #check equality
  equals: (vec) ->
    if this.x == vec.x and this.y == vec.y
      return true
  
  length: ->
	  return Math.sqrt(this.x * this.x + this.y * this.y)
  
  lengthSquared: ->
    return this.x * this.x + this.y * this.y
  
  dot: (vec) ->
    return this.x * vec.x + this.y * vec.y
  
  normalize: ->
    len = this.length
    this.x /= len
    this.y /= len

  unit: ->
    len = this.length
    return new Vector2(this.x / len, this.y / len)

  lerp: (a,b,fraction) ->
      return a.add(b.sub(a)).mult(fraction)


