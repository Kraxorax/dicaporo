// landing page for mobile app says 'Welcome'
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome title'),
      ),
      body: const Center(
        child: Text('Welcome body'),
      ),
    );
  }
}
