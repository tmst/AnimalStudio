# AnimalStudio
A short example of using the factory pattern in a Dart

The (admittedly silly but fun, yes?) idea is that an AnimalStudio instance knows what kind of Animal to add to itself based on what kind of AnimalStudio it is. Thus a CatStudio automagically adds a Cat. AnimalStudio doesn't know anything about CatStudio or Cat, so it can be part of a public API that is extended "in the wild".

There is only one animal per studio to prevent feedback.
