import 'package:flutter/material.dart';
import 'package:meals/widgets/category_item.dart';
import 'package:meals/widgets/menu.dart';

import '../utils/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static String route = '/categories';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meals')),
      drawer: Menu(),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((x) => CategoryItem(x.title, x.color, x.id))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
