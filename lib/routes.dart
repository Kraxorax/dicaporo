import 'package:dicaporo/pages/home_page.dart';
import 'package:dicaporo/pages/landing_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  // '/': (context) => const DPHomePage(
  //       title: 'Kucna stranica',
  //     ),
  '/landing': (context) => const LandingPage(),
};
