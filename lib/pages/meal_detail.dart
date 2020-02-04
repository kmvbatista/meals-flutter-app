import 'package:flutter/material.dart';
import 'package:meals/utils/dummy_data.dart';

class MealDetail extends StatelessWidget {
  static const route = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          FloatingActionButton(
            onPressed: () => Navigator.of(context).pop(mealId),
            child: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
