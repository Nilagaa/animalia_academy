class AnimalModel {
  final String? id;
  final String name;
  final String category;
  final String habitat;
  final String sound;
  final String habitatPath;
  final String soundPath;
  final String imagePath;

  const AnimalModel({
    this.id,
    required this.name,
    required this.category,
    required this.habitat,
    required this.sound,
    required this.habitatPath,
    required this.soundPath,
    required this.imagePath,
  });

  @override
  String toString() {
    return "{name: $name, category: $category, habitat: $habitat, sound: $sound}";
  }
}