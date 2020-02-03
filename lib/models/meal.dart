import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Hard }

enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String steps;
  final List<String> ingredients;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGluttenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal(
      {@required this.id,
      @required this.categories,
      @required this.affordability,
      @required this.title,
      @required this.complexity,
      @required this.duration,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.isGluttenFree,
      @required this.isLactoseFree,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.steps});
}
