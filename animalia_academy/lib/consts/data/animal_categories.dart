import "dart:core";


class AnimalCategories {
  static const String mammals = "Mammals";
  static const String birds = "Birds";
  static const String reptiles = "Reptiles";

  static List<String> getAsList() {
    return [
      mammals,
      birds,
      reptiles,
    ];
  }
}
