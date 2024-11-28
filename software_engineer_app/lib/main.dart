import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const SoftwareEngineerApp());
}

class SoftwareEngineerApp extends StatelessWidget {
  const SoftwareEngineerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
