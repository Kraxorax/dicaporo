import 'package:dicaporo/main.dart';
import 'package:dicaporo/pages/home_page.dart';
import 'package:dicaporo/pages/landing_page.dart';
import 'package:dicaporo/pages/main_container.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  // ***** NOTE: The '/' route is handled by the MaterialApp widget
  '/chores': (context) =>
      const MainContainer(title: 'landing page', body: LandingPage()),
  '/school': (context) => const MainContainer(
        title: 'Ovo je home page da rute',
        body: HomePage(title: 'Home page'),
      )
};
