import 'package:flutter/material.dart';
import 'package:meals/pages/Filters.dart';
import 'package:meals/pages/categories.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            FlatButton(
                onPressed: () =>
                    Navigator.popAndPushNamed(context, Filters.route),
                child: Text('Filters')),
            FlatButton(
                onPressed: () =>
                    Navigator.popAndPushNamed(context, CategoriesScreen.route),
                child: Text('Categories')),
          ],
        ),
      ),
    );
  }
}
