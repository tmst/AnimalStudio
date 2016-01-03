import "dart:mirrors";

abstract class AnimalStudio {
  Animal animal;
  final String animalType;

  String record() {
    print("$animalType: ${animal.sing()} in ${animal.octave}");
  }

  AnimalStudio(octave) {
    animal = new Animal(animalType, octave);
  }
}

/// Class that contains the factory that uses reflection to
/// create instances of subclasses
abstract class Animal {
  factory Animal(String type, String octave) {
    MirrorSystem libs = currentMirrorSystem();
    LibraryMirror lib = libs.findLibrary(new Symbol('app.models'));
    Map<Symbol, Mirror> classes = lib.declarations;
    ClassMirror cls = classes[new Symbol(type)];
    InstanceMirror inst = cls.newInstance(new Symbol(''), [octave]);
    return inst.reflectee;
  }
}

/// Class to contain the unnamed constructor called by
/// Animal factory
class AnimalBase implements Animal {
  final String sound;
  final String octave;
  String sing() => sound;
  AnimalBase(this.sound, this.octave);
}
