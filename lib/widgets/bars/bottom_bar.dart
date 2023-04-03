import 'package:flutter/material.dart';

class DPBottomBar extends StatelessWidget {
  final Map<int, String> navBarItemIndexToPageName = {
    0: '/',
    1: '/landing',
    2: '/landing',
    3: '/landing',
    4: '/landing',
  };

  DPBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) =>
          Navigator.pushNamed(context, navBarItemIndexToPageName[value]!),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
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
}
