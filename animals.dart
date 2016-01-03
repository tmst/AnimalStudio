import "dart:mirrors";

abstract class AnimalStudio {
  Animal animal;
  final String animalType;

  String record() {
    print("$animalType: ${animal.sing()} in ${animal.octave}");
  }

  AnimalStudio(octave) {
    animal = new Animal(animalType, octave);
//    print("AnimalStudio::setup(): ${animal.toString()}: $animalType");
//    print("AnimalStudio::makeSound: " + animal.makeSound());
  }
}

/* Here's the magic factory.
 * To do:
 *  Get "cat", "dog", etc from mirror system.
 */
abstract class Animal {
  factory Animal(String type, String octave) {
    MirrorSystem libs = currentMirrorSystem();
    LibraryMirror lib = libs.findLibrary(new Symbol('app.models'));
    Map<Symbol, Mirror> classes = lib.declarations;
    // To do: handle exception if class not found
    ClassMirror cls = classes[new Symbol(type)];
    InstanceMirror inst = cls.newInstance(new Symbol(''), [octave]);
    return inst.reflectee;
  }
}

class AnimalBase implements Animal {
  final String sound;   // the sound she makes when she sings
  final String octave; // the sound she makes when she sings
  String sing() => sound;
  AnimalBase(this.sound, this.octave);
}
