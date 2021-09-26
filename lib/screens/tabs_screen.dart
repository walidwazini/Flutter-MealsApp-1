import 'package:flutter/material.dart';

import '../screens/favourites_screen.dart';
import '../screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //final List<Widget> _pages = [ CategoriesScreen(), FavouritesScreen() ];
  final List<Map<String,Object>> _pages = [
    {'page' : CategoriesScreen(), 'title' : 'Categories'},
    {'page' : FavouritesScreen(), 'title' : 'Favourites'},
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black12,
        selectedItemColor:Colors.white ,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category_rounded), label: 'Categories', ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites', ),
        ],
      ),
    );
  }
}
