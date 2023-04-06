import 'package:dicaporo/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const DicaporoApp());
}

class DicaporoApp<Page extends StatefulWidget> extends StatelessWidget {
  const DicaporoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Material theme here
    final ThemeData materialThemeData = ThemeData(
      primarySwatch: Colors.brown,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      }),
    );

    // Cupertino theme here
    const CupertinoThemeData cupertinoThemeData = CupertinoThemeData();

    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return CupertinoApp(
        theme: cupertinoThemeData,
        routes: routesToPages,
        initialRoute: DicaporoRoutes.home,
      );
    } else {
      return MaterialApp(
        title: 'Dicaporo Title',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: materialThemeData,
        routes: routesToPages,
        initialRoute: DicaporoRoutes.home,
      );
    }
  }
}
