import 'package:sagas_meta/sagas_meta.dart';
import 'package:sagas_meta/src/entity_post.dart';
abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

abstract class Walker {
  // This class is intended to be used as a mixin, and should not be
  // extended directly.
  factory Walker._() => null;

  void walk() {
    print("I'm walking");
  }
}

abstract class Swimmer {
  // This class is intended to be used as a mixin, and should not be
  // extended directly.
  factory Swimmer._() => null;

  void swim() {
    print("I'm swimming");
  }
}

abstract class Flyer {
  // This class is intended to be used as a mixin, and should not be
  // extended directly.
  factory Flyer._() => null;

  void fly() {
    print("I'm flying");
  }
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Swimmer, Flyer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}


// mixin - on
abstract class Super {
  void method() {
    print("Super");
  }
}

class MySuper implements Super {
  void method() {
    print("MySuper");
  }
}

mixin Mixin on Super {
  void method() {
    super.method();
    print("Sub");
  }
}

class Client extends MySuper with Mixin {}


main() {
  Cat cat = Cat();
  Dove dove = Dove();

  // A cat can walk.
  cat.walk();

  // A dove can walk and fly.
  dove.walk();
  dove.fly();

  // A normal cat cannot fly.
  // cat.fly(); // Uncommenting this does not compile.

  Client().method();

  print('ok');
}