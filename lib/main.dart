import 'package:dicaporo/pages/main_container.dart';
import 'package:dicaporo/routes.dart';
import 'package:flutter/material.dart';
import 'package:dicaporo/pages/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(DicaporoApp(
    page: const HomePage(
      title: 'Home page',
    ),
  ));
}

class DicaporoApp<Page extends StatefulWidget> extends StatelessWidget {
  var page;

  DicaporoApp({super.key, this.page});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicaporo Title',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      routes: routes,
      home: MainContainer(title: 'a', body: page),
    );
  }
}
