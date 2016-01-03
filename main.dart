import "model.dart";

void main() {
  /// Creating AnimalStudio subclass instance causes
  /// its respective Animal subclass instance to
  /// be created. Calling record() on it makes the
  /// Animal sing.
  new CatStudio("C major").record();
  new DogStudio("C minor").record();
}
