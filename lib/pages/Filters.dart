import 'package:flutter/material.dart';
import 'package:meals/widgets/menu.dart';

class Filters extends StatefulWidget {
  static String route = '/filters';
  Filters({Key key}) : super(key: key);

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool glutenFree = false;
  bool vegetarian = false;
  bool vegan = false;
  bool lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: AppBar(title: Text('Filtering')),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Adjust your meal selection.',
                  style: Theme.of(context).textTheme.title),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  buildSwitchListTile(
                    'Free-gluten meals',
                    'Only include gluten-free meals',
                    glutenFree,
                    (newValue) {
                      setState(() {
                        glutenFree = newValue;
                      });
                    },
                  ),
                  buildSwitchListTile(
                    'Lactose-freee meals',
                    'Only include lactose-free meals',
                    lactoseFree,
                    (newValue) {
                      setState(() {
                        lactoseFree = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  SwitchListTile buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(description),
        value: currentValue,
        onChanged: updateValue);
  }
}
