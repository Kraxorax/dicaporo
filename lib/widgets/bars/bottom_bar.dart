import 'package:dicaporo/routes.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => goToPage(context, index),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Chores',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.amber[800],
    );
  }

  void goToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, DicaporoRoutes.home);
        break;
      case 1:
        Navigator.pushNamed(context, DicaporoRoutes.chores);
        break;
      case 2:
        Navigator.pushNamed(context, DicaporoRoutes.school);
        break;
      default:
        Navigator.pushNamed(context, DicaporoRoutes.home);
        break;
    }
  }
}
