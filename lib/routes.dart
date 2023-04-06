import 'package:dicaporo/pages/home_page.dart';
import 'package:dicaporo/pages/landing_page.dart';
import 'package:dicaporo/pages/main_container.dart';
import 'package:flutter/material.dart';

class DicaporoRoutes {
  static const String home = '/';
  static const String landing = '/landing';
  static const String chores = '/chores';
  static const String school = '/school';
}

Map<String, WidgetBuilder> routesToPages = {
  DicaporoRoutes.home: (context) => const MainContainer(
        title: 'H o m e',
        body: HomePage(title: 'home page'),
      ),
  DicaporoRoutes.landing: (context) =>
      const MainContainer(title: 'landing page', body: LandingPage()),
  DicaporoRoutes.chores: (context) => const MainContainer(
        title: 'C h o r e s',
        body: HomePage(title: 'chores page'),
      ),
  DicaporoRoutes.school: (context) => const MainContainer(
        title: 'S c h o o l',
        body: HomePage(title: 'school page'),
      )
};
