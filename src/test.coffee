ROFLtits = (to_say) ->
  console.log("(.Y.)<#{to_say}|");

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
