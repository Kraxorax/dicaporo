import 'package:dicaporo/pages/chores_page.dart';
import 'package:dicaporo/pages/home_page.dart';
import 'package:dicaporo/pages/landing_page.dart';
import 'package:dicaporo/pages/main_container.dart';
import 'package:dicaporo/pages/map_page.dart';
import 'package:flutter/material.dart';

class DicaporoRoutes {
  static const String home = '/';
  static const String landing = '/landing';
  static const String chores = '/chores';
  static const String school = '/school';
}

Map<String, WidgetBuilder> routesToPages = {
  DicaporoRoutes.home: (context) => const HomePage(title: 'home page'),
  DicaporoRoutes.chores: (context) => const ChoresPage(title: 'chores page'),
  DicaporoRoutes.school: (context) => const MapPage(),
  DicaporoRoutes.landing: (context) =>
      const MainContainer(title: 'landing page', body: LandingPage()),
};
