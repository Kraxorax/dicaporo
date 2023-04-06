import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool menuOpen = false;

  void openMenu() {
    setState(() {
      menuOpen = true;
    });
  }

  void goToPage(String page) {
    setState(() {
      menuOpen = false;
    });
    Navigator.pushNamed(context, page);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            AppLocalizations.of(context)!.buttonPushCounter,
          ),
        ],
      ),
    );
  }
}
