import 'package:dicaporo/pages/main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:dicaporo/pages/landing_page.dart';

class DPHomePage extends StatefulWidget {
  const DPHomePage({super.key, required this.title});

  final String title;

  @override
  State<DPHomePage> createState() => DPHomePageState();
}

class DPHomePageState extends State<DPHomePage> {
  int counter = 0;
  bool menuOpen = false;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

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

  Map<int, String> navBarItemIndexToPageName = {
    0: '/',
    1: '/landing',
    2: '/landing',
    3: '/landing',
    4: '/landing',
  };

  @override
  Widget build(BuildContext context) {
    return DPMMainContainer(
      title: 'Dicaporo Home Page',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.buttonPushCounter,
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
