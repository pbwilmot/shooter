class Vec2
  constructor:(@x=0,@y=0) ->
    if typeof @x is "Vec2"
      vec2=@x
      @x=vector.x
      @y=vector.y
  
  # add ascalar
  add: (vec) ->
    if typeof vec is "Vec2"
      this.x += vec.x
      this.y += vec.y
    else
      this.x += vec
      this.y += vec
  
  #subtract a scalar
  sub: (vec) ->
    if typeof vec is "Vec2"
      this.x -= vec.x
      this.y -= vec.y
    else
    this.x -= vec
    this.y -= vec
  
  #multiply by a vector
  mult: (vec) ->
    if typeof vec is "Vec2"
      this.x *= vec.x
      this.y *= vec.y
    else
    this.x *= vec
    this.y *= vec
  
  #divide by a vector
  mult: (vec) ->
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
    return Vec2(this.x / len, this.y / len)

  lerp: () ->
      
  lerp: () ->
  
  min: -> 
    
  min: ->
  
  max: ->
  
  max: ->
  
  floor: ->
  
  ceil: ->
  
  abs: ->
  
  toAngle: ->
  
  fromAngle: (theta) ->
  
  randomDirection: ->
