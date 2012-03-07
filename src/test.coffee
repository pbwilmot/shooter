v = new Vector3(20, 1.3, 15)
v.normalize()
console.log(v.length())

w = new Player(0,0,0)
w.setLocation(new Vector3(1,2,3))
w.addToPitch(200)
w.addToYaw(370)
console.log(w)
console.log(w.getLook())
console.log(w.getLocation())

c = new Camera(0,0,0)
c.synchronizeWithLookingObject(w);
console.log(c)