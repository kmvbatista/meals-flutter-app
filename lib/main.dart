import 'package:flutter/material.dart';
import 'package:meals/pages/Filters.dart';
import 'package:meals/pages/categories.dart';
import 'package:meals/pages/category_meals.dart';
import 'package:meals/pages/meal_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      home: CategoriesScreen(),
      routes: {
        CategoryMeals.route: (ctx) => CategoryMeals(),
        MealDetail.route: (ctx) => MealDetail(),
        Filters.route: (ctx) => Filters(),
        CategoriesScreen.route: (ctx) => CategoriesScreen(),
      },
    );
  }
}
