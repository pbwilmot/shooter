(function() {
  var Animal, Person, ROFLtits, erin,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  ROFLtits = function(to_say) {
    return console.log("(.Y.)<" + to_say + "|");
  };

  Animal = (function() {

    function Animal(species) {
      this.species = species;
    }

    Animal.prototype.identify = function() {
      return console.log(this.species);
    };

    return Animal;

  })();

  Person = (function(_super) {

    __extends(Person, _super);

    function Person(name) {
      this.name = name;
      Person.__super__.constructor.call(this, "homo sapiens");
    }

    Person.prototype.identify = function() {
      return console.log(this.name);
    };

    return Person;

  })(Animal);

  erin = new Person("Erin");

  ROFLtits("I AM " + erin.name + " AND I AM A " + erin.species);

  erin.identify();

}).call(this);
