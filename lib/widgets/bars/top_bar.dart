import 'package:flutter/material.dart';

class DPTopBar extends StatelessWidget {
  const DPTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: const Text('Dicaporo Title'),
      // hamburger menu on the left
      actions: <Widget>[
        PopupMenuButton<int>(
          itemBuilder: (BuildContext context) => [
            const PopupMenuItem<int>(
              value: 1,
              child: Text('Daj mi jedno piwo'),
            ),
            const PopupMenuItem<int>(
              value: 2,
              child: Text('I wireframes'),
            ),
          ],
          icon: const Icon(Icons.menu),
          onSelected: (int value) {
            // Handle menu item selection
            print('Selected item: $value');
          },
        ),
      ],
    );
  }
}
