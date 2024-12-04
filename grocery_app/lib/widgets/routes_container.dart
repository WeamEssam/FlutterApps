import 'package:flutter/material.dart';

class RoutesContainer extends StatelessWidget {
  const RoutesContainer({super.key, required this.initialPage});
  final int initialPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            width: 20,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: i == initialPage ? Colors.green : Colors.grey,
            ),
          )
      ],
    );
  }
}
