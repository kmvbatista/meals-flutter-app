import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  static const route = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Container(),
    );
  }
}
