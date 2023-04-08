import 'package:dicaporo/util/l10nHelpers.dart';
import 'package:flutter/material.dart';

Widget buildPopupMenuButton() {
  buildItems(BuildContext ctx) {
    return [
      PopupMenuItem<int>(
        value: 1,
        child: Text(ft(ctx)('Daj mi jedno piwo')),
      ),
      PopupMenuItem<int>(
        value: 2,
        child: Text(ft(ctx)('I wireframes')),
      ),
    ];
  }

  return PopupMenuButton<int>(
    itemBuilder: buildItems,
    icon: const Icon(Icons.menu),
    onSelected: (int value) {
      // Handle menu item selection
      print('Selected item: $value');
    },
  );
}

var buildTopBar = (BuildContext ctx, String title) => AppBar(
      title: Text(title),
      // hamburger menu on the left
      actions: <Widget>[
        buildPopupMenuButton(),
      ],
    );
