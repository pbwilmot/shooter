ROFLtits = (to_say) ->
  console.log("(.Y.)<#{to_say}|")

class Animal
  constructor: (@species) ->
  identify: ->
    console.log(@species)

class Person extends Animal
  constructor: (@name) ->
    super("homo sapiens")
  identify: ->
    console.log(@name)

erin = new Person("Erin")

ROFLtits("I AM #{erin.name} AND I AM A #{erin.species}")

erin.identify()

x = new Camera()
x.setYaw(45)
x.setPitch(45)

#TEST VECTOR CONSTRUCTOR
v = new Vector2();
console.log v.getX(),v.getY()
v=new Vector2(1,1)
console.log v.getX(),v.getY()
v=new Vector2(v)
console.log v.getX(),v.getY()


#test add
v.add(1)
console.log v.getX(),v.getY()
v.add(v)
console.log v.getX(),v.getY()

#test sub


#test mult

n = new WorldObject()
console.log(n)
