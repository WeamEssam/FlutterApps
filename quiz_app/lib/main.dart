import 'package:flutter/material.dart';
import 'package:quiz_app/views/home_view.dart';
import 'package:quiz_app/views/marks_view.dart';
import 'package:quiz_app/views/quiz_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        QuizView.routeName: (context) => const QuizView(),
        HomeView.routeName: (context) => const HomeView(),
        MarksView.routeName: (context) => MarksView(),
      },
      home: const HomeView(),
    );
  }
}
