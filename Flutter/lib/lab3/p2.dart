// W.A.P. to create class Animal that has a method called animalSound() Subclass of Animals is cat it has its own implementation of an animal sound.

class Animal {
  void animalSound() {
    print("animal sound");
  }
}

class Cat extends Animal {
  @override
  void animalSound() {
    print("meow");
  }
}

void main() {
  Animal a = Animal();
  a.animalSound();

  Cat c = Cat();
  c.animalSound();
}