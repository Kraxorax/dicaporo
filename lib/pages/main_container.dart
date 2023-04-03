import 'package:dicaporo/widgets/bars/bottom_bar.dart';
import 'package:flutter/material.dart';

class DPMMainContainer extends StatefulWidget {
  const DPMMainContainer({super.key, required this.title, required this.body});

  final String title;

  final Widget body;

  @override
  State<DPMMainContainer> createState() => DPMMainContainerState();
}

class DPMMainContainerState extends State<DPMMainContainer> {
  Widget buildPopupMenuButton() {
    return PopupMenuButton<int>(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        // hamburger menu on the left
        actions: <Widget>[
          buildPopupMenuButton(),
        ],
      ),
      body: widget.body,
      bottomNavigationBar: DPBottomBar(),
    );
  }
}
