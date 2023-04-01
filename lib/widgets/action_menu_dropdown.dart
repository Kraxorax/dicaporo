// widget of hamburger manu dropdown
import 'package:flutter/material.dart';

class ActionMenuDrodown extends StatelessWidget {
  const ActionMenuDrodown({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        const PopupMenuItem(
          child: Text('Item 1'),
        ),
        const PopupMenuItem(
          child: Text('Item 2'),
        ),
      ],
    );
  }
}
