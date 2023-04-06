// landing page for mobile app says 'Welcome'
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text('LANDING PAGE'),
          Text('Shown only one time when app is first installed'),
        ],
      ),
    );
  }
}
