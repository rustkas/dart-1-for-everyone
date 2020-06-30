class Person {
  String name;
  Person(this.name);
}

class Animal {
  String name;
  Animal(this.name);
}

mixin Greeting {
  String get name;
  String greet() => 'Howdy $name!';
}


class Friend extends Person with Greeting {
  Friend(name): super(name);
}

class Pet extends Animal with Greeting {
  Pet(name): super(name);
}
