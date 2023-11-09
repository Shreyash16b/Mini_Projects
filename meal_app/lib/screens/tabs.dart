import 'package:flutter/material.dart';
import 'package:meal_app/screens/categoryscreen.dart';
import 'package:meal_app/screens/mealsscreen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  @override
  State<TabScreen> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen> {
  int pageindex = 0;

  void _onTapTabBar(index) {
    setState(() {
      pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoryScreen();

    if (pageindex == 1) {
      activePage = MealsScreen(title: 'Favorites', meals: []);
    }
    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageindex,
        onTap: _onTapTabBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites'
          ),
        ],
      ),
    );
  }
}
