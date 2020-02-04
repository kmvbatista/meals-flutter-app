import 'package:flutter/material.dart';
import 'package:meals/pages/categories.dart';
import 'package:meals/pages/favorites.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<Map<String, Object>> pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': Favorites(), 'title': 'Favorites'},
  ];
  int selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pages[selectedIndex]['title'],
        ),
        bottom: TabBar(tabs: <Widget>[
          Tab(
            icon: Icon(Icons.category),
            text: 'Categories',
          ),
          Tab(
            icon: Icon(Icons.star),
            text: 'Favorites',
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Categories'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
          ]),
      body: pages[selectedIndex]['page'],
    );
  }
}
