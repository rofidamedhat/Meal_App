enum Affordability {
  affordable,
  pricey,
  luxurious,
}

enum Complexity {
  simple,
  challenging,
  hard,
}

class MealModel {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final double duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final Affordability affordability;
  final Complexity complexity;

  MealModel({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
    required this.affordability,
    required this.complexity,
  });
}
