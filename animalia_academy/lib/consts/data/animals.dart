import "../../data_models/animal_model.dart";
import "animal_categories.dart";


List<AnimalModel> animals = [
  const AnimalModel(
    name: "Dog",
    category: AnimalCategories.mammals,
    habitat: "Dog House",
    sound: "Woof!",
    habitatPath: "assets/images/animal_habitats/dog_habitat.png",
    soundPath: "assets/audio/sfx/animal_sounds/dog.wav",
    imagePath: "assets/images/animals/dog.png",
  ),
  const AnimalModel(
    name: "Bear",
    category: AnimalCategories.mammals,
    habitat: "Forest",
    sound: "Roar!",
    habitatPath: "assets/images/animal_habitats/forest.png",
    soundPath: "assets/audio/sfx/animal_sounds/bear.wav",
    imagePath: "assets/images/animals/bear.png",
  ),
  const AnimalModel(
    name: "Cat",
    category: AnimalCategories.mammals,
    habitat: "House",
    sound: "Meow!",
    habitatPath: "assets/images/animal_habitats/house.png",
    soundPath: "assets/audio/sfx/animal_sounds/cat.wav",
    imagePath: "assets/images/animals/cat.png",
  ),
  const AnimalModel(
    name: "Cow",
    category: AnimalCategories.mammals,
    habitat: "Farm",
    sound: "Moo!",
    habitatPath: "assets/images/animal_habitats/farm.png",
    soundPath: "assets/audio/sfx/animal_sounds/cow.wav",
    imagePath: "assets/images/animals/cow.png",
  ),
  const AnimalModel(
    name: "Deer",
    category: AnimalCategories.mammals,
    habitat: "Forest",
    sound: "Snort!",
    habitatPath: "assets/images/animal_habitats/forest.png",
    soundPath: "assets/audio/sfx/animal_sounds/deer.wav",
    imagePath: "assets/images/animals/deer.png",
  ),
  const AnimalModel(
    name: "Elephant",
    category: AnimalCategories.mammals,
    habitat: "Jungle",
    sound: "Brrrrrrrr!",
    habitatPath: "assets/images/animal_habitats/jungle.png",
    soundPath: "assets/audio/sfx/animal_sounds/elephant.wav",
    imagePath: "assets/images/animals/elephant.png",
  ),
  const AnimalModel(
    name: "Monkey",
    category: AnimalCategories.mammals,
    habitat: "Jungle",
    sound: "Ooh-ooh!",
    habitatPath: "assets/images/animal_habitats/jungle.png",
    soundPath: "assets/audio/sfx/animal_sounds/monkey.wav",
    imagePath: "assets/images/animals/monkey.png",
  ),
  const AnimalModel(
    name: "Pig",
    category: AnimalCategories.mammals,
    habitat: "Farm",
    sound: "Oink!",
    habitatPath: "assets/images/animal_habitats/farm.png",
    soundPath: "assets/audio/sfx/animal_sounds/pig.wav",
    imagePath: "assets/images/animals/pig.png",
  ),
  const AnimalModel(
    name: "Rat",
    category: AnimalCategories.mammals,
    habitat: "Sewer",
    sound: "Squeak!",
    habitatPath: "assets/images/animal_habitats/sewer.png",
    soundPath: "assets/audio/sfx/animal_sounds/rat.wav",
    imagePath: "assets/images/animals/rat.png",
  ),
  const AnimalModel(
    name: "Eagle",
    category: AnimalCategories.birds,
    habitat: "Forest",
    sound: "Gawk!",
    habitatPath: "assets/images/animal_habitats/forest.png",
    soundPath: "assets/audio/sfx/animal_sounds/eagle.wav",
    imagePath: "assets/images/animals/eagle.png",
  ),
  const AnimalModel(
    name: "Snake",
    category: AnimalCategories.reptiles,
    habitat: "Jungle",
    sound: "Hiss!",
    habitatPath: "assets/images/animal_habitats/jungle.png",
    soundPath: "assets/audio/sfx/animal_sounds/snake.wav",
    imagePath: "assets/images/animals/snake.png",
  ),
];

// move this to utilities //
List<AnimalModel> getAnimalListByCategory(String category) {
  List<AnimalModel> selectedAnimals = [];

  for (AnimalModel animal in animals) {
    if (animal.category.toUpperCase() == category.toUpperCase()) {
      selectedAnimals.add(animal);
    }
  }

  return selectedAnimals;
}

AnimalModel getAnimalByName(String name) {
  for (AnimalModel animal in animals) {
    if (animal.name.toUpperCase() == name.toUpperCase()) {
      return animal;
    }
  }

  return animals[0];
}
