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
