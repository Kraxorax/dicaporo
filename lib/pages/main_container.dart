import 'package:dicaporo/widgets/bars/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/bars/top_bar.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key, required this.title, required this.body});

  final String title;

  final Widget body;

  @override
  State<MainContainer> createState() => MainContainerState();
}

class MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: widget.body,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
