import 'package:flutter/material.dart';
import 'package:mealapp/screens/home_screen.dart';
import 'package:mealapp/screens/hotel_screens.dart';
import 'package:mealapp/screens/meals.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedTabIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(), // Home tab content
    const MealsScreen(title: 'Favorites', meals: []), // Favorites tab content
    const HotelScreen(), // Replace with your third tab content
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_selectedTabIndex == 0 ? 'Home' : 'Your Favorites'),
      // ),
      body: _pages[_selectedTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Restaurant',
          ),
        ],
      ),
    );
  }
}
