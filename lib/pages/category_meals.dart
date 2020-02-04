import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/utils/dummy_data.dart';
import 'package:meals/widgets/meal_item.dart';

class CategoryMeals extends StatefulWidget {
  static const route = '/category-meals';

  @override
  _CategoryMealsState createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<CategoryMeals> {
  List<Meal> categoryMeals;
  String categoryId;
  String categoryTitle;
  bool loadedInitData = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryId = routeArgs['id'];
      categoryTitle = routeArgs['title'];
      categoryMeals = DUMMY_MEALS
          .where((meal) => meal.categories.contains(categoryId))
          .toList();
      loadedInitData = true;
    }
  }

  void removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((x) => x.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
              removeItem: removeMeal,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
