import 'package:dicaporo/util/l10nHelpers.dart';
import 'package:dicaporo/widgets/bars/bottom_bar.dart';
import 'package:dicaporo/widgets/bars/top_bar.dart';
import 'package:flutter/material.dart';

class ChoresPage extends StatefulWidget {
  const ChoresPage({super.key, required this.title});

  final String title;

  @override
  State<ChoresPage> createState() => ChoresPageState();
}

class ChoresPageState extends State<ChoresPage> {
  void goToPage(String page) {
    Navigator.pushNamed(context, page);
  }

  ListView buildChoresList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Card(
            child: Container(
                child: Text(ft(context)('Chore $index')),
                padding: const EdgeInsets.all(16)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            borderOnForeground: false,
          ),
          onTap: () {
            print('Chore $index tapped');
            // goToPage('/chores/$index');
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTopBar(context, widget.title),
      body: Center(
        child: buildChoresList(),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
