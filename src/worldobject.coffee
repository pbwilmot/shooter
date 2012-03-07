class WorldObject
  pos : new Vector3(0,0,0)
  constructor: (x=0,y=0,z=0)->
    this.pos = new Vector3(x,y,z)
  setLocation: (x=0,y=0,z=0)->
    this.pos = new Vector3(x,y,z)