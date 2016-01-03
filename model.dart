/// Application-level classes that make use of the Animal* classes in
/// animals.dart. Packaged in a a library for easy reference by the
/// Animal class factory when creating new subclass instances.

library app.models;

import 'animals.dart';

class CatStudio extends AnimalStudio {
  final animalType = "Cat";
  CatStudio(octave) : super(octave);
}

class DogStudio extends AnimalStudio {
  final animalType = "Dog";
  DogStudio(octave) : super(octave);
}

class Cat extends AnimalBase {
  Cat(octave) : super("Meow", octave);
}

class Dog extends AnimalBase {
  Dog(octave) : super("Woof", octave);
}
