import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.white,
      selectedIconTheme: const IconThemeData(color: Colors.pink),
      unselectedIconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: const Color.fromRGBO(0, 0, 0, .8),
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'data'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'data'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'data'),
      ],
    );
  }
}
